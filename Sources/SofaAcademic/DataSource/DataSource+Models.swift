import Foundation

public struct Country {

    public let id: Int
    public let name: String

    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }

}

public struct League {

    public let id: Int
    public let name: String
    public let country: Country?
    public let logoUrl: String?

    public init(
        id: Int,
        name: String,
        country: Country? = nil,
        logoUrl: String? = nil
    ) {
        self.id = id
        self.name = name
        self.country = country
        self.logoUrl = logoUrl
    }

}

public struct Team {

    public let id: Int
    public let name: String
    public let logoUrl: String?

    public init(id: Int, name: String, logoUrl: String? = nil) {
        self.id = id
        self.name = name
        self.logoUrl = logoUrl
    }

}

public enum EventStatus {

    case notStarted
    case inProgress
    case halftime
    case finished

}

public struct Event {

    public let id: Int
    public let homeTeam: Team
    public let awayTeam: Team
    public let league: League?
    public let status: EventStatus
    public let startTimestamp: Int
    public let homeScore: Int?
    public let awayScore: Int?

    public init(
        id: Int,
        homeTeam: Team,
        awayTeam: Team,
        league: League?,
        status: EventStatus,
        startTimestamp: Int,
        homeScore: Int? = nil,
        awayScore: Int? = nil
    ) {
        self.id = id
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.league = league
        self.status = status
        self.startTimestamp = startTimestamp
        self.homeScore = homeScore
        self.awayScore = awayScore
    }

}
