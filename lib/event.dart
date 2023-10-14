import 'package:start_gg_app/tournament.dart';
import 'package:start_gg_app/videogame.dart';

// https://developer.start.gg/reference/event.doc
class Event {
  int id;
  int? checkInBuffer;
  int? checkInDuration;
  bool? checkInEnabled;
  int? competitionTier;
  DateTime? createdAt;
  DateTime? deckSubmissionDeadline;
  bool? hasDecks;
  bool? hasTasks;
  bool? isOnline;
  String? matchRulesMarkdown;
  String name;
  int? numEntrants;
  String? prizingInfo;
  String? publishing;
  String? rulesMarkdown;
  int? rulesetId;
  String? slug;
  DateTime startAt;
  int? state; // ActivityState::CREATED, ActivityState::ACTIVE, ActivityState::COMPLETED
  DateTime? teamManagementDeadline;
  bool? teamNameAllowed;
  Tournament? tournament;
  int? type;
  DateTime? updatedAt;
  bool? useEventSeeds;
  VideoGame videogame;

  Event(this.id, this.name, this.videogame, this.startAt);

  /*
    # The entrants that belong to an event, paginated by filter criteria
    entrants(query: EventEntrantPageQuery): EntrantConnection
    images(type: String): [Image]
    league: League
    # The phase groups that belong to an event.
    phaseGroups: [PhaseGroup]
    phases(state: ActivityState, phaseId: ID): [Phase]
    # Paginated sets for this Event
    sets(page: Int, perPage: Int, sortType: SetSortType, filters: SetFilters): SetConnection
    # Paginated list of standings
    standings(query: StandingPaginationQuery!): StandingConnection
    # Paginated stations on this event
    stations(query: StationFilter): StationsConnection
    # Team roster size requirements
    teamRosterSize: TeamRosterSize
    # The entrant (if applicable) for a given user in this event
    userEntrant(userId: ID): Entrant
    # The waves being used by the event
    waves(phaseId: ID): [Wave]
  */
}