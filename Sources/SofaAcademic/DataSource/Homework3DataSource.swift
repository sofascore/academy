import Foundation

public final class Homework3DataSource {

    public init() {}

    public func events() -> [Event] {
        (laLigaEvents() + premierLeagueEvents())
            .sorted(by: { $0.startTimestamp < $1.startTimestamp })
    }

    private func laLigaEvents() -> [Event] {
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
                homeTeam: Self.realMadrid,
                awayTeam: Self.villareal,
                league: Self.laLigaLeague,
                status: .finished,
                startTimestamp: Int(DateUtil.yesterday(hour: 21, minute: 0).timeIntervalSince1970),
                homeScore: 2,
                awayScore: 1
            ),
            Event(
                id: 3,
                homeTeam: Self.barcelona,
                awayTeam: Self.mallorca,
                league: Self.laLigaLeague,
                status: .finished,
                startTimestamp: Int(DateUtil.yesterday(hour: 19, minute: 0).timeIntervalSince1970),
                homeScore: 3,
                awayScore: 1
            ),
            Event(
                id: 5,
                homeTeam: Self.mallorca,
                awayTeam: Self.villareal,
                league: Self.laLigaLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 13, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 6,
                homeTeam: Self.realMadrid,
                awayTeam: Self.villareal,
                league: Self.laLigaLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 20, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 7,
                homeTeam: Self.barcelona,
                awayTeam: Self.mallorca,
                league: Self.laLigaLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 22, minute: 00).timeIntervalSince1970)
            )
        ]
    }

    private func premierLeagueEvents() -> [Event] {
        [
            Event(
                id: 8,
                homeTeam: Self.arsenal,
                awayTeam: Self.manUtd,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.atNextAvailableHour(hour: 19).timeIntervalSince1970)
            ),
            Event(
                id: 9,
                homeTeam: Self.chelsea,
                awayTeam: Self.liverpool,
                league: Self.premierLeague,
                status: .inProgress,
                startTimestamp: Int(DateUtil.todayAtNearestPastHalfPoint().timeIntervalSince1970),
                homeScore: 1,
                awayScore: 2
            ),
            Event(
                id: 10,
                homeTeam: Self.liverpool,
                awayTeam: Self.arsenal,
                league: Self.premierLeague,
                status: .finished,
                startTimestamp: Int(DateUtil.yesterday(hour: 11, minute: 30).timeIntervalSince1970),
                homeScore: 4,
                awayScore: 2
            ),
            Event(
                id: 12,
                homeTeam: Self.arsenal,
                awayTeam: Self.liverpool,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 11, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 13,
                homeTeam: Self.chelsea,
                awayTeam: Self.manUtd,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 11, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 14,
                homeTeam: Self.manUtd,
                awayTeam: Self.arsenal,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 20, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 15,
                homeTeam: Self.liverpool,
                awayTeam: Self.chelsea,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 20, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 16,
                homeTeam: Self.manCity,
                awayTeam: Self.newcastle,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.tommorow(hour: 20, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 17,
                homeTeam: Self.manCity,
                awayTeam: Self.chelsea,
                league: Self.premierLeague,
                status: .finished,
                startTimestamp: Int(DateUtil.yesterday(hour: 9, minute: 00).timeIntervalSince1970),
                homeScore: 1,
                awayScore: 1
            ),
            Event(
                id: 18,
                homeTeam: Self.manUtd,
                awayTeam: Self.newcastle,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.inTwoDays(hour: 11, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 19,
                homeTeam: Self.liverpool,
                awayTeam: Self.manCity,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.inTwoDays(hour: 13, minute: 00).timeIntervalSince1970)
            ),
            Event(
                id: 20,
                homeTeam: Self.newcastle,
                awayTeam: Self.arsenal,
                league: Self.premierLeague,
                status: .notStarted,
                startTimestamp: Int(DateUtil.inTwoDays(hour: 20, minute: 00).timeIntervalSince1970)
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
    private static let manCity = Team(
        id: 9,
        name: "Man City",
        logoUrl: "https://img.sofascore.com/api/v1/team/17/image"
    )
    private static let newcastle = Team(
        id: 10,
        name: "Newcastle",
        logoUrl: "https://img.sofascore.com/api/v1/team/39/image"
    )
}
