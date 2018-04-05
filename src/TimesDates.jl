__precompile__()

module TimesDates

export TimeDate, TimeDateZone, 
       TimeZone, timezonename, astimezone,
       localtime, univtime,
       time, date, 
       typesof

import Base: promote_rule, convert, string, show, showcompact,
             (==), (!=), (<=), (<), (>), (>=), isless, isequal,
             isempty, time, min, max, minmax

import Base: start, done, next, eltype, length, size

import Base.Math: (+), (-), (*), (/),
                  fld, cld, div, rem, mod, round

import Dates: Time, Date, DateTime,
              Year, Month, Day, Hour, Minute, Second,
              Millisecond, Microsecond, Nanosecond,
              year, month, day, hour, minute, second,
              millisecond, microsecond, nanosecond

using Dates: AbstractTime
using Dates
import Dates: CompoundPeriod

using CompoundPeriods

import TimeZones: @tz_str, ZonedDateTime, TimeZone,
    localzone, astimezone, UTCOffset, FixedTimeZone, VariableTimeZone,
    all_timezones, timezone_names

import TimeZones.value # value(offset::UTCOffset) = value(offset.std + offset.dst)


const AkoTimeZone = Union{FixedTimeZone, VariableTimeZone}


# ======================================= #

include("support/typesof.jl")
include("support/ctime.jl")

include("type/nanotime.jl")

include("timesupport/zoneoffset.jl")
include("timesupport/univtime_localtime.jl")
include("timesupport/slow_fast.jl")

include("timezone/timezones.jl")

include("type/constructor.jl")
#include("type/compound.jl")

include("type/selector.jl")
include("type/compare.jl")
include("type/addsub.jl")
include("type/string_show.jl")

# ======================================= #


end # TimesDates

