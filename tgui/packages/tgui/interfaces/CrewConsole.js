import { sortBy } from 'common/collections';
import { useBackend } from '../backend';
import { Box, Button, ColorBox, Section, Table, Icon } from '../components'; // SKYRAT EDIT - ORIGINAL: import { Box, Button, ColorBox, Section, Table }
import { COLORS } from '../constants';
import { Window } from '../layouts';

const HEALTH_COLOR_BY_LEVEL = [
  '#17d568',
  '#2ecc71',
  '#e67e22',
  '#ed5100',
  '#e74c3c',
  '#ed2814',
];

const jobIsHead = jobId => jobId % 10 === 0;

const jobToColor = jobId => {
  if (jobId === 0) {
    return COLORS.department.captain;
  }
  if (jobId >= 10 && jobId < 20) {
    return COLORS.department.security;
  }
  if (jobId >= 20 && jobId < 30) {
    return COLORS.department.medbay;
  }
  if (jobId >= 30 && jobId < 40) {
    return COLORS.department.science;
  }
  if (jobId >= 40 && jobId < 50) {
    return COLORS.department.engineering;
  }
  if (jobId >= 50 && jobId < 60) {
    return COLORS.department.cargo;
  }
  // SKYRAT EDIT - ORIGINAL: if (jobId >= 200 && jobId < 230) {
  if (jobId >= 200 && jobId < 240) {
    return COLORS.department.centcom;
  }
  return COLORS.department.other;
};

const healthToColor = (oxy, tox, burn, brute) => {
  const healthSum = oxy + tox + burn + brute;
  const level = Math.min(Math.max(Math.ceil(healthSum / 25), 0), 5);
  return HEALTH_COLOR_BY_LEVEL[level];
};

const HealthStat = props => {
  const { type, value } = props;
  return (
    <Box
      inline
      width={2}
      color={COLORS.damageType[type]}
      textAlign="center">
      {value}
    </Box>
  );
};

export const CrewConsole = () => {
  return (
    <Window
      title="Crew Monitor"
      width={600}
      height={600}>
      <Window.Content scrollable>
        <Section minHeight="540px">
          <CrewTable />
        </Section>
      </Window.Content>
    </Window>
  );
};

const CrewTable = (props, context) => {
  const { act, data } = useBackend(context);
  const sensors = sortBy(
    s => s.ijob
  )(data.sensors ?? []);
  return (
    <Table>
      <Table.Row>
        <Table.Cell bold>
          Name
        </Table.Cell>
        <Table.Cell bold collapsing />
        <Table.Cell bold collapsing textAlign="center">
          Vitals
        </Table.Cell>
        <Table.Cell bold>
          Position
        </Table.Cell>
        {!!data.link_allowed && (
          <Table.Cell bold collapsing>
            Tracking
          </Table.Cell>
        )}
      </Table.Row>
      {sensors.map(sensor => (
        <CrewTableEntry sensor_data={sensor} key={sensor.ref} />
      ))}
    </Table>
  );
};

const CrewTableEntry = (props, context) => {
  const { act, data } = useBackend(context);
  const { link_allowed } = data;
  const { sensor_data } = props;
  const {
    name,
    assignment,
    ijob,
    is_robot, // SKYRAT EDIT ADDITION - Displaying robotic species Icon
    life_status,
    oxydam,
    toxdam,
    burndam,
    brutedam,
    area,
    can_track,
  } = sensor_data;

  return (
    <Table.Row>
      <Table.Cell
        bold={jobIsHead(ijob)}
        color={jobToColor(ijob)}>
        {name}{assignment !== undefined ? ` (${assignment})` : ""}
      </Table.Cell>
      {/* SKYRAT EDIT START - Displaying robotic species Icon */}
      <Table.Cell collapsing textAlign="center">
        {is_robot ? <Icon name="wrench" color="#B7410E" size={1} /> : ""}
      </Table.Cell>
      {/* SKYRAT EDIT END */}
      <Table.Cell collapsing textAlign="center">
        {life_status ? (
          <ColorBox
            color={healthToColor(
              oxydam,
              toxdam,
              burndam,
              brutedam)} />
        ) : (
          <ColorBox color={'#ed2814'} />
        )}
      </Table.Cell>
      <Table.Cell collapsing textAlign="center">
        {oxydam !== undefined ? (
          <Box inline>
            <HealthStat type="oxy" value={oxydam} />
            {'/'}
            <HealthStat type="toxin" value={toxdam} />
            {'/'}
            <HealthStat type="burn" value={burndam} />
            {'/'}
            <HealthStat type="brute" value={brutedam} />
          </Box>
        ) : (
          life_status ? 'Alive' : 'Dead'
        )}
      </Table.Cell>
      <Table.Cell>
        {area !== undefined ? area : 'N/A'}
      </Table.Cell>
      {!!link_allowed && (
        <Table.Cell collapsing>
          <Button
            content="Track"
            disabled={!can_track}
            onClick={() => act('select_person', {
              name: name,
            })} />
        </Table.Cell>
      )}
    </Table.Row>
  );
};
