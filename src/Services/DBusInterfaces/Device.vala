/*
 * Copyright (c) 2011-2015 Wingpanel Developers (http://launchpad.net/wingpanel)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

const string HISTORY_TYPE_RATE = "rate";
const string HISTORY_TYPE_CHARGE = "charge";

const string STATISTICS_TYPE_CHARGING = "charging";
const string STATISTICS_TYPE_DISCHARGING = "discharging";

namespace Power.Services.DBusInterfaces {
    public struct HistoryDataPoint {
        uint32 time;
        double value;
        uint32 state;
    }

    public struct StatisticsDataPoint {
        double value;
        double accuracy;
    }

    [DBus (name = "org.freedesktop.UPower.Device")]
    public interface Device : DBusProxy {
        public abstract HistoryDataPoint[] GetHistory (string type, uint32 timespan, uint32 resolution) throws IOError;

        public abstract StatisticsDataPoint[] GetStatistics (string type) throws IOError;
        public abstract void Refresh () throws IOError;

        public abstract bool has_history { public owned get; public set; }
        public abstract bool has_statistics { public owned get; public set; }
        public abstract bool is_present { public owned get; public set; }
        public abstract bool is_rechargeable { public owned get; public set; }
        public abstract bool online { public owned get; public set; }
        public abstract bool power_supply { public owned get; public set; }
        public abstract double capacity { public owned get; public set; }
        public abstract double energy { public owned get; public set; }
        public abstract double energy_empty { public owned get; public set; }
        public abstract double energy_full { public owned get; public set; }
        public abstract double energy_full_design { public owned get; public set; }
        public abstract double energy_rate { public owned get; public set; }
        public abstract double luminosity { public owned get; public set; }
        public abstract double percentage { public owned get; public set; }
        public abstract double temperature { public owned get; public set; }
        public abstract double voltage { public owned get; public set; }
        public abstract int64 time_to_empty { public owned get; public set; }
        public abstract int64 time_to_full { public owned get; public set; }
        public abstract string model { public owned get; public set; }
        public abstract string native_path { public owned get; public set; }
        public abstract string serial { public owned get; public set; }
        public abstract string vendor { public owned get; public set; }
        public abstract uint32 state { public owned get; public set; }
        public abstract uint32 technology { public owned get; public set; }
        public abstract uint32 Type { public owned get; public set; }
        public abstract uint64 update_time  { public owned get; public set; }
    }
}

/*
           public abstract StatisticsDataPoint[] GetStatistics (string type) throws IOError;
           public abstract void Refresh () throws IOError;
           public abstract bool has_history { public owned get; public set; }
           public abstract bool HasStatistics { public owned get; public set; }
           public abstract bool IsPresent { public owned get; public set; }
           public abstract bool IsRechargeable { public owned get; public set; }
           public abstract bool Online { public owned get; public set; }
           public abstract bool PowerSupply { public owned get; public set; }
           public abstract double Capacity { public owned get; public set; }
           public abstract double Energy { public owned get; public set; }
           public abstract double EnergyEmpty { public owned get; public set; }
           public abstract double EnergyFull { public owned get; public set; }
           public abstract double EnergyFullDesign { public owned get; public set; }
           public abstract double EnergyRate { public owned get; public set; }
           public abstract double Luminosity { public owned get; public set; }
           public abstract double Temperature { public owned get; public set; }
           public abstract double Voltage { public owned get; public set; }
           public abstract int64 TimeToEmpty { public owned get; public set; }
           public abstract int64 TimeToFull { public owned get; public set; }}
           public abstract string Model { public owned get; public set; }}
           public abstract string NativePath { public owned get; public set; }}
           public abstract string Serial { public owned get; public set; }}
           public abstract string Vendor { public owned get; public set; }}
           public abstract uint32 State { public owned get; public set; }}
           public abstract uint32 Technology { public owned get; public set; }}
           public abstract uint32 Type { public owned get; public set; }}
           public abstract uint64 UpdateTime  { public owned get; public set; }}*/
