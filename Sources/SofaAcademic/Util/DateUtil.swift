import Foundation

enum DateUtil {

    static func today(hour: Int? = nil, minute: Int? = nil) -> Date {
        let calendar = Calendar.current
        let now = Date()
        let components = DateComponents(
            year: calendar.component(.year, from: now),
            month: calendar.component(.month, from: now),
            day: calendar.component(.day, from: now),
            hour: hour ?? calendar.component(.hour, from: now),
            minute: minute ?? calendar.component(.minute, from: now),
            second: 0
        )
        return calendar.date(from: components)!
    }

    static func todayAtNearestHalfPoint() -> Date {
        let calendar = Calendar.current
        let now = Date()
        let minute = calendar.component(.minute, from: now)
        let components = DateComponents(
            year: calendar.component(.year, from: now),
            month: calendar.component(.month, from: now),
            day: calendar.component(.day, from: now),
            hour: calendar.component(.hour, from: now),
            minute: minute > 30 ? 30 : 0,
            second: 0
        )
        return calendar.date(from: components)!
    }

    static func atNextAvailableHour(hour: Int) -> Date {
        let calendar = Calendar.current
        var now = Date()
        let nowHour = calendar.component(.hour, from: now)
        if nowHour > hour {
            now = now.addingTimeInterval(Double(24 - (nowHour - hour)) * 60 * 60)
        }
        let components = DateComponents(
            year: calendar.component(.year, from: now),
            month: calendar.component(.month, from: now),
            day: calendar.component(.day, from: now),
            hour: calendar.component(.hour, from: now),
            minute: 0,
            second: 0
        )
        return calendar.date(from: components)!
    }

    static func yesterday(hour: Int? = nil, minute: Int? = nil) -> Date {
        let calendar = Calendar.current
        let now = Date().addingTimeInterval(-24 * 60 * 60)
        let components = DateComponents(
            year: calendar.component(.year, from: now),
            month: calendar.component(.month, from: now),
            day: calendar.component(.day, from: now),
            hour: hour ?? calendar.component(.hour, from: now),
            minute: minute ?? calendar.component(.minute, from: now),
            second: 0
        )
        return calendar.date(from: components)!
    }

}
