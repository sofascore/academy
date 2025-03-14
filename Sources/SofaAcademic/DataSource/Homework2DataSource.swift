import Foundation

public final class Homework2DataSource {

    public init() {}

    public func laLigaLeague() -> League {
        Self.laLigaLeague
    }

    public func laLigaEvents() -> [Event] {
        [
            Event(
                id: 1,
                homeTeam: Self.realMadrid,
                awayTeam: Self.barcelona,
                league: Self.laLigaLeague,
                status: .inProgress,
                startTimestamp: Int(DateUtil.todayAtNearestPastHalfPoint().timeIntervalSince1970),
                homeScore: 0,
                awayScore: 0
            ),
            Event(
                id: 2,
                homeTeam: Self.barcelona,
                awayTeam: Self.mallorca,
                league: Self.laLigaLeague,
                status: .finished,
                startTimestamp: Int(DateUtil.yesterday(hour: 19, minute: 0).timeIntervalSince1970),
                homeScore: 3,
                awayScore: 1
            ),
            Event(
                id: 3,
                homeTeam: Self.villareal,
                awayTeam: Self.realMadrid,
                league: Self.laLigaLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 19, minute: 30).timeIntervalSince1970)
            ),
            Event(
                id: 4,
                homeTeam: Self.villareal,
                awayTeam: Self.barcelona,
                league: Self.laLigaLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 18, minute: 30).timeIntervalSince1970)
            )
        ]
    }

    private static let spain = Country(id: 1, name: "Spain")
    private static let england = Country(id: 2, name: "England")
    private static let laLigaLeague = League(
        id: 1,
        name: "La Liga",
        country: spain,
        logoUrl: "https://img.sofascore.com/api/v1/unique-tournament/8/image"
    )
    private static let premierLeague = League(
        id: 2,
        name: "Premier League",
        country: england,
        logoUrl: "https://img.sofascore.com/api/v1/unique-tournament/17/image"
    )
    private static let realMadrid = Team(
        id: 1,
        name: "Real Madrid",
        logoUrl: "https://img.sofascore.com/api/v1/team/2829/image"
    )
    private static let barcelona = Team(
        id: 2,
        name: "Barcelona",
        logoUrl: "https://img.sofascore.com/api/v1/team/2817/image"
    )
    private static let villareal = Team(
        id: 3,
        name: "Villareal",
        logoUrl: "https://img.sofascore.com/api/v1/team/2819/image"
    )
    private static let mallorca = Team(
        id: 4,
        name: "Mallorca",
        logoUrl: "https://img.sofascore.com/api/v1/team/2826/image"
    )
    private static let arsenal = Team(
        id: 5,
        name: "Arsenal",
        logoUrl: "https://img.sofascore.com/api/v1/team/42/image"
    )
    private static let manUtd = Team(
        id: 6,
        name: "Man Utd",
        logoUrl: "https://img.sofascore.com/api/v1/team/35/image"
    )
    private static let chelsea = Team(
        id: 7,
        name: "Chelsea",
        logoUrl: "https://img.sofascore.com/api/v1/team/38/image"
    )
    private static let liverpool = Team(
        id: 8,
        name: "Liverpool",
        logoUrl: "https://img.sofascore.com/api/v1/team/44/image"
    )
}
