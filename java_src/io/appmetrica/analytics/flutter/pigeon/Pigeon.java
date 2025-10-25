package io.appmetrica.analytics.flutter.pigeon;

import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.play.core.review.model.ReviewErrorCode;
import io.appmetrica.analytics.flutter.pigeon.Pigeon;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Pigeon {

    /* loaded from: classes2.dex */
    public static final class AdRevenuePigeon {
        private String adNetwork;
        private String adPlacementId;
        private String adPlacementName;
        private String adRevenue;
        private AdTypePigeon adType;
        private String adUnitId;
        private String adUnitName;
        private String currency;
        private Map<String, String> payload;
        private String precision;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String adNetwork;
            private String adPlacementId;
            private String adPlacementName;
            private String adRevenue;
            private AdTypePigeon adType;
            private String adUnitId;
            private String adUnitName;
            private String currency;
            private Map<String, String> payload;
            private String precision;

            public AdRevenuePigeon build() {
                AdRevenuePigeon adRevenuePigeon = new AdRevenuePigeon();
                adRevenuePigeon.setAdRevenue(this.adRevenue);
                adRevenuePigeon.setCurrency(this.currency);
                adRevenuePigeon.setAdType(this.adType);
                adRevenuePigeon.setAdNetwork(this.adNetwork);
                adRevenuePigeon.setAdUnitId(this.adUnitId);
                adRevenuePigeon.setAdUnitName(this.adUnitName);
                adRevenuePigeon.setAdPlacementId(this.adPlacementId);
                adRevenuePigeon.setAdPlacementName(this.adPlacementName);
                adRevenuePigeon.setPrecision(this.precision);
                adRevenuePigeon.setPayload(this.payload);
                return adRevenuePigeon;
            }

            public Builder setAdNetwork(String str) {
                this.adNetwork = str;
                return this;
            }

            public Builder setAdPlacementId(String str) {
                this.adPlacementId = str;
                return this;
            }

            public Builder setAdPlacementName(String str) {
                this.adPlacementName = str;
                return this;
            }

            public Builder setAdRevenue(String str) {
                this.adRevenue = str;
                return this;
            }

            public Builder setAdType(AdTypePigeon adTypePigeon) {
                this.adType = adTypePigeon;
                return this;
            }

            public Builder setAdUnitId(String str) {
                this.adUnitId = str;
                return this;
            }

            public Builder setAdUnitName(String str) {
                this.adUnitName = str;
                return this;
            }

            public Builder setCurrency(String str) {
                this.currency = str;
                return this;
            }

            public Builder setPayload(Map<String, String> map) {
                this.payload = map;
                return this;
            }

            public Builder setPrecision(String str) {
                this.precision = str;
                return this;
            }
        }

        AdRevenuePigeon() {
        }

        static AdRevenuePigeon fromList(ArrayList<Object> arrayList) {
            AdTypePigeon adTypePigeon;
            AdRevenuePigeon adRevenuePigeon = new AdRevenuePigeon();
            adRevenuePigeon.setAdRevenue((String) arrayList.get(0));
            adRevenuePigeon.setCurrency((String) arrayList.get(1));
            Object obj = arrayList.get(2);
            if (obj == null) {
                adTypePigeon = null;
            } else {
                adTypePigeon = AdTypePigeon.values()[((Integer) obj).intValue()];
            }
            adRevenuePigeon.setAdType(adTypePigeon);
            adRevenuePigeon.setAdNetwork((String) arrayList.get(3));
            adRevenuePigeon.setAdUnitId((String) arrayList.get(4));
            adRevenuePigeon.setAdUnitName((String) arrayList.get(5));
            adRevenuePigeon.setAdPlacementId((String) arrayList.get(6));
            adRevenuePigeon.setAdPlacementName((String) arrayList.get(7));
            adRevenuePigeon.setPrecision((String) arrayList.get(8));
            adRevenuePigeon.setPayload((Map) arrayList.get(9));
            return adRevenuePigeon;
        }

        public String getAdNetwork() {
            return this.adNetwork;
        }

        public String getAdPlacementId() {
            return this.adPlacementId;
        }

        public String getAdPlacementName() {
            return this.adPlacementName;
        }

        public String getAdRevenue() {
            return this.adRevenue;
        }

        public AdTypePigeon getAdType() {
            return this.adType;
        }

        public String getAdUnitId() {
            return this.adUnitId;
        }

        public String getAdUnitName() {
            return this.adUnitName;
        }

        public String getCurrency() {
            return this.currency;
        }

        public Map<String, String> getPayload() {
            return this.payload;
        }

        public String getPrecision() {
            return this.precision;
        }

        public void setAdNetwork(String str) {
            this.adNetwork = str;
        }

        public void setAdPlacementId(String str) {
            this.adPlacementId = str;
        }

        public void setAdPlacementName(String str) {
            this.adPlacementName = str;
        }

        public void setAdRevenue(String str) {
            if (str != null) {
                this.adRevenue = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"adRevenue\" is null.");
        }

        public void setAdType(AdTypePigeon adTypePigeon) {
            this.adType = adTypePigeon;
        }

        public void setAdUnitId(String str) {
            this.adUnitId = str;
        }

        public void setAdUnitName(String str) {
            this.adUnitName = str;
        }

        public void setCurrency(String str) {
            if (str != null) {
                this.currency = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"currency\" is null.");
        }

        public void setPayload(Map<String, String> map) {
            this.payload = map;
        }

        public void setPrecision(String str) {
            this.precision = str;
        }

        ArrayList<Object> toList() {
            Integer valueOf;
            ArrayList<Object> arrayList = new ArrayList<>(10);
            arrayList.add(this.adRevenue);
            arrayList.add(this.currency);
            AdTypePigeon adTypePigeon = this.adType;
            if (adTypePigeon == null) {
                valueOf = null;
            } else {
                valueOf = Integer.valueOf(adTypePigeon.index);
            }
            arrayList.add(valueOf);
            arrayList.add(this.adNetwork);
            arrayList.add(this.adUnitId);
            arrayList.add(this.adUnitName);
            arrayList.add(this.adPlacementId);
            arrayList.add(this.adPlacementName);
            arrayList.add(this.precision);
            arrayList.add(this.payload);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public enum AdTypePigeon {
        UNKNOWN(0),
        NATIVE(1),
        BANNER(2),
        REWARDED(3),
        INTERSTITIAL(4),
        MREC(5),
        APP_OPEN(6),
        OTHER(7);
        
        final int index;

        AdTypePigeon(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public interface AppMetricaConfigConverterPigeon {
        static MessageCodec<Object> getCodec() {
            return AppMetricaConfigConverterPigeonCodec.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$0(AppMetricaConfigConverterPigeon appMetricaConfigConverterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, appMetricaConfigConverterPigeon.toJson((AppMetricaConfigPigeon) ((ArrayList) obj).get(0)));
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        static void setup(BinaryMessenger binaryMessenger, final AppMetricaConfigConverterPigeon appMetricaConfigConverterPigeon) {
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaConfigConverterPigeon.toJson", getCodec());
            if (appMetricaConfigConverterPigeon != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.a
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaConfigConverterPigeon.lambda$setup$0(Pigeon.AppMetricaConfigConverterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
        }

        String toJson(AppMetricaConfigPigeon appMetricaConfigPigeon);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class AppMetricaConfigConverterPigeonCodec extends StandardMessageCodec {
        public static final AppMetricaConfigConverterPigeonCodec INSTANCE = new AppMetricaConfigConverterPigeonCodec();

        private AppMetricaConfigConverterPigeonCodec() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b10, ByteBuffer byteBuffer) {
            switch (b10) {
                case Byte.MIN_VALUE:
                    return AppMetricaConfigPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -127:
                    return LocationPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -126:
                    return PreloadInfoPigeon.fromList((ArrayList) readValue(byteBuffer));
                default:
                    return super.readValueOfType(b10, byteBuffer);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            if (obj instanceof AppMetricaConfigPigeon) {
                byteArrayOutputStream.write(128);
                writeValue(byteArrayOutputStream, ((AppMetricaConfigPigeon) obj).toList());
            } else if (obj instanceof LocationPigeon) {
                byteArrayOutputStream.write(129);
                writeValue(byteArrayOutputStream, ((LocationPigeon) obj).toList());
            } else if (obj instanceof PreloadInfoPigeon) {
                byteArrayOutputStream.write(130);
                writeValue(byteArrayOutputStream, ((PreloadInfoPigeon) obj).toList());
            } else {
                super.writeValue(byteArrayOutputStream, obj);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class AppMetricaConfigPigeon {
        private Boolean advIdentifiersTracking;
        private Boolean anrMonitoring;
        private Long anrMonitoringTimeout;
        private String apiKey;
        private Long appBuildNumber;
        private Map<String, String> appEnvironment;
        private Boolean appOpenTrackingEnabled;
        private String appVersion;
        private Boolean crashReporting;
        private List<String> customHosts;
        private Boolean dataSendingEnabled;
        private String deviceType;
        private Long dispatchPeriodSeconds;
        private Map<String, String> errorEnvironment;
        private Boolean firstActivationAsUpdate;
        private LocationPigeon location;
        private Boolean locationTracking;
        private Boolean logs;
        private Long maxReportsCount;
        private Long maxReportsInDatabaseCount;
        private Boolean nativeCrashReporting;
        private PreloadInfoPigeon preloadInfo;
        private Boolean revenueAutoTrackingEnabled;
        private Long sessionTimeout;
        private Boolean sessionsAutoTrackingEnabled;
        private String userProfileID;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Boolean advIdentifiersTracking;
            private Boolean anrMonitoring;
            private Long anrMonitoringTimeout;
            private String apiKey;
            private Long appBuildNumber;
            private Map<String, String> appEnvironment;
            private Boolean appOpenTrackingEnabled;
            private String appVersion;
            private Boolean crashReporting;
            private List<String> customHosts;
            private Boolean dataSendingEnabled;
            private String deviceType;
            private Long dispatchPeriodSeconds;
            private Map<String, String> errorEnvironment;
            private Boolean firstActivationAsUpdate;
            private LocationPigeon location;
            private Boolean locationTracking;
            private Boolean logs;
            private Long maxReportsCount;
            private Long maxReportsInDatabaseCount;
            private Boolean nativeCrashReporting;
            private PreloadInfoPigeon preloadInfo;
            private Boolean revenueAutoTrackingEnabled;
            private Long sessionTimeout;
            private Boolean sessionsAutoTrackingEnabled;
            private String userProfileID;

            public AppMetricaConfigPigeon build() {
                AppMetricaConfigPigeon appMetricaConfigPigeon = new AppMetricaConfigPigeon();
                appMetricaConfigPigeon.setApiKey(this.apiKey);
                appMetricaConfigPigeon.setAdvIdentifiersTracking(this.advIdentifiersTracking);
                appMetricaConfigPigeon.setAnrMonitoring(this.anrMonitoring);
                appMetricaConfigPigeon.setAnrMonitoringTimeout(this.anrMonitoringTimeout);
                appMetricaConfigPigeon.setAppBuildNumber(this.appBuildNumber);
                appMetricaConfigPigeon.setAppEnvironment(this.appEnvironment);
                appMetricaConfigPigeon.setAppOpenTrackingEnabled(this.appOpenTrackingEnabled);
                appMetricaConfigPigeon.setAppVersion(this.appVersion);
                appMetricaConfigPigeon.setCrashReporting(this.crashReporting);
                appMetricaConfigPigeon.setCustomHosts(this.customHosts);
                appMetricaConfigPigeon.setDataSendingEnabled(this.dataSendingEnabled);
                appMetricaConfigPigeon.setDeviceType(this.deviceType);
                appMetricaConfigPigeon.setDispatchPeriodSeconds(this.dispatchPeriodSeconds);
                appMetricaConfigPigeon.setErrorEnvironment(this.errorEnvironment);
                appMetricaConfigPigeon.setFirstActivationAsUpdate(this.firstActivationAsUpdate);
                appMetricaConfigPigeon.setLocation(this.location);
                appMetricaConfigPigeon.setLocationTracking(this.locationTracking);
                appMetricaConfigPigeon.setLogs(this.logs);
                appMetricaConfigPigeon.setMaxReportsCount(this.maxReportsCount);
                appMetricaConfigPigeon.setMaxReportsInDatabaseCount(this.maxReportsInDatabaseCount);
                appMetricaConfigPigeon.setNativeCrashReporting(this.nativeCrashReporting);
                appMetricaConfigPigeon.setPreloadInfo(this.preloadInfo);
                appMetricaConfigPigeon.setRevenueAutoTrackingEnabled(this.revenueAutoTrackingEnabled);
                appMetricaConfigPigeon.setSessionTimeout(this.sessionTimeout);
                appMetricaConfigPigeon.setSessionsAutoTrackingEnabled(this.sessionsAutoTrackingEnabled);
                appMetricaConfigPigeon.setUserProfileID(this.userProfileID);
                return appMetricaConfigPigeon;
            }

            public Builder setAdvIdentifiersTracking(Boolean bool) {
                this.advIdentifiersTracking = bool;
                return this;
            }

            public Builder setAnrMonitoring(Boolean bool) {
                this.anrMonitoring = bool;
                return this;
            }

            public Builder setAnrMonitoringTimeout(Long l10) {
                this.anrMonitoringTimeout = l10;
                return this;
            }

            public Builder setApiKey(String str) {
                this.apiKey = str;
                return this;
            }

            public Builder setAppBuildNumber(Long l10) {
                this.appBuildNumber = l10;
                return this;
            }

            public Builder setAppEnvironment(Map<String, String> map) {
                this.appEnvironment = map;
                return this;
            }

            public Builder setAppOpenTrackingEnabled(Boolean bool) {
                this.appOpenTrackingEnabled = bool;
                return this;
            }

            public Builder setAppVersion(String str) {
                this.appVersion = str;
                return this;
            }

            public Builder setCrashReporting(Boolean bool) {
                this.crashReporting = bool;
                return this;
            }

            public Builder setCustomHosts(List<String> list) {
                this.customHosts = list;
                return this;
            }

            public Builder setDataSendingEnabled(Boolean bool) {
                this.dataSendingEnabled = bool;
                return this;
            }

            public Builder setDeviceType(String str) {
                this.deviceType = str;
                return this;
            }

            public Builder setDispatchPeriodSeconds(Long l10) {
                this.dispatchPeriodSeconds = l10;
                return this;
            }

            public Builder setErrorEnvironment(Map<String, String> map) {
                this.errorEnvironment = map;
                return this;
            }

            public Builder setFirstActivationAsUpdate(Boolean bool) {
                this.firstActivationAsUpdate = bool;
                return this;
            }

            public Builder setLocation(LocationPigeon locationPigeon) {
                this.location = locationPigeon;
                return this;
            }

            public Builder setLocationTracking(Boolean bool) {
                this.locationTracking = bool;
                return this;
            }

            public Builder setLogs(Boolean bool) {
                this.logs = bool;
                return this;
            }

            public Builder setMaxReportsCount(Long l10) {
                this.maxReportsCount = l10;
                return this;
            }

            public Builder setMaxReportsInDatabaseCount(Long l10) {
                this.maxReportsInDatabaseCount = l10;
                return this;
            }

            public Builder setNativeCrashReporting(Boolean bool) {
                this.nativeCrashReporting = bool;
                return this;
            }

            public Builder setPreloadInfo(PreloadInfoPigeon preloadInfoPigeon) {
                this.preloadInfo = preloadInfoPigeon;
                return this;
            }

            public Builder setRevenueAutoTrackingEnabled(Boolean bool) {
                this.revenueAutoTrackingEnabled = bool;
                return this;
            }

            public Builder setSessionTimeout(Long l10) {
                this.sessionTimeout = l10;
                return this;
            }

            public Builder setSessionsAutoTrackingEnabled(Boolean bool) {
                this.sessionsAutoTrackingEnabled = bool;
                return this;
            }

            public Builder setUserProfileID(String str) {
                this.userProfileID = str;
                return this;
            }
        }

        AppMetricaConfigPigeon() {
        }

        static AppMetricaConfigPigeon fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            long longValue2;
            Long valueOf2;
            long longValue3;
            Long valueOf3;
            LocationPigeon fromList;
            long longValue4;
            Long valueOf4;
            long longValue5;
            Long valueOf5;
            PreloadInfoPigeon fromList2;
            long longValue6;
            AppMetricaConfigPigeon appMetricaConfigPigeon = new AppMetricaConfigPigeon();
            appMetricaConfigPigeon.setApiKey((String) arrayList.get(0));
            appMetricaConfigPigeon.setAdvIdentifiersTracking((Boolean) arrayList.get(1));
            appMetricaConfigPigeon.setAnrMonitoring((Boolean) arrayList.get(2));
            Object obj = arrayList.get(3);
            Long l10 = null;
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            appMetricaConfigPigeon.setAnrMonitoringTimeout(valueOf);
            Object obj2 = arrayList.get(4);
            if (obj2 == null) {
                valueOf2 = null;
            } else {
                if (obj2 instanceof Integer) {
                    longValue2 = ((Integer) obj2).intValue();
                } else {
                    longValue2 = ((Long) obj2).longValue();
                }
                valueOf2 = Long.valueOf(longValue2);
            }
            appMetricaConfigPigeon.setAppBuildNumber(valueOf2);
            appMetricaConfigPigeon.setAppEnvironment((Map) arrayList.get(5));
            appMetricaConfigPigeon.setAppOpenTrackingEnabled((Boolean) arrayList.get(6));
            appMetricaConfigPigeon.setAppVersion((String) arrayList.get(7));
            appMetricaConfigPigeon.setCrashReporting((Boolean) arrayList.get(8));
            appMetricaConfigPigeon.setCustomHosts((List) arrayList.get(9));
            appMetricaConfigPigeon.setDataSendingEnabled((Boolean) arrayList.get(10));
            appMetricaConfigPigeon.setDeviceType((String) arrayList.get(11));
            Object obj3 = arrayList.get(12);
            if (obj3 == null) {
                valueOf3 = null;
            } else {
                if (obj3 instanceof Integer) {
                    longValue3 = ((Integer) obj3).intValue();
                } else {
                    longValue3 = ((Long) obj3).longValue();
                }
                valueOf3 = Long.valueOf(longValue3);
            }
            appMetricaConfigPigeon.setDispatchPeriodSeconds(valueOf3);
            appMetricaConfigPigeon.setErrorEnvironment((Map) arrayList.get(13));
            appMetricaConfigPigeon.setFirstActivationAsUpdate((Boolean) arrayList.get(14));
            Object obj4 = arrayList.get(15);
            if (obj4 == null) {
                fromList = null;
            } else {
                fromList = LocationPigeon.fromList((ArrayList) obj4);
            }
            appMetricaConfigPigeon.setLocation(fromList);
            appMetricaConfigPigeon.setLocationTracking((Boolean) arrayList.get(16));
            appMetricaConfigPigeon.setLogs((Boolean) arrayList.get(17));
            Object obj5 = arrayList.get(18);
            if (obj5 == null) {
                valueOf4 = null;
            } else {
                if (obj5 instanceof Integer) {
                    longValue4 = ((Integer) obj5).intValue();
                } else {
                    longValue4 = ((Long) obj5).longValue();
                }
                valueOf4 = Long.valueOf(longValue4);
            }
            appMetricaConfigPigeon.setMaxReportsCount(valueOf4);
            Object obj6 = arrayList.get(19);
            if (obj6 == null) {
                valueOf5 = null;
            } else {
                if (obj6 instanceof Integer) {
                    longValue5 = ((Integer) obj6).intValue();
                } else {
                    longValue5 = ((Long) obj6).longValue();
                }
                valueOf5 = Long.valueOf(longValue5);
            }
            appMetricaConfigPigeon.setMaxReportsInDatabaseCount(valueOf5);
            appMetricaConfigPigeon.setNativeCrashReporting((Boolean) arrayList.get(20));
            Object obj7 = arrayList.get(21);
            if (obj7 == null) {
                fromList2 = null;
            } else {
                fromList2 = PreloadInfoPigeon.fromList((ArrayList) obj7);
            }
            appMetricaConfigPigeon.setPreloadInfo(fromList2);
            appMetricaConfigPigeon.setRevenueAutoTrackingEnabled((Boolean) arrayList.get(22));
            Object obj8 = arrayList.get(23);
            if (obj8 != null) {
                if (obj8 instanceof Integer) {
                    longValue6 = ((Integer) obj8).intValue();
                } else {
                    longValue6 = ((Long) obj8).longValue();
                }
                l10 = Long.valueOf(longValue6);
            }
            appMetricaConfigPigeon.setSessionTimeout(l10);
            appMetricaConfigPigeon.setSessionsAutoTrackingEnabled((Boolean) arrayList.get(24));
            appMetricaConfigPigeon.setUserProfileID((String) arrayList.get(25));
            return appMetricaConfigPigeon;
        }

        public Boolean getAdvIdentifiersTracking() {
            return this.advIdentifiersTracking;
        }

        public Boolean getAnrMonitoring() {
            return this.anrMonitoring;
        }

        public Long getAnrMonitoringTimeout() {
            return this.anrMonitoringTimeout;
        }

        public String getApiKey() {
            return this.apiKey;
        }

        public Long getAppBuildNumber() {
            return this.appBuildNumber;
        }

        public Map<String, String> getAppEnvironment() {
            return this.appEnvironment;
        }

        public Boolean getAppOpenTrackingEnabled() {
            return this.appOpenTrackingEnabled;
        }

        public String getAppVersion() {
            return this.appVersion;
        }

        public Boolean getCrashReporting() {
            return this.crashReporting;
        }

        public List<String> getCustomHosts() {
            return this.customHosts;
        }

        public Boolean getDataSendingEnabled() {
            return this.dataSendingEnabled;
        }

        public String getDeviceType() {
            return this.deviceType;
        }

        public Long getDispatchPeriodSeconds() {
            return this.dispatchPeriodSeconds;
        }

        public Map<String, String> getErrorEnvironment() {
            return this.errorEnvironment;
        }

        public Boolean getFirstActivationAsUpdate() {
            return this.firstActivationAsUpdate;
        }

        public LocationPigeon getLocation() {
            return this.location;
        }

        public Boolean getLocationTracking() {
            return this.locationTracking;
        }

        public Boolean getLogs() {
            return this.logs;
        }

        public Long getMaxReportsCount() {
            return this.maxReportsCount;
        }

        public Long getMaxReportsInDatabaseCount() {
            return this.maxReportsInDatabaseCount;
        }

        public Boolean getNativeCrashReporting() {
            return this.nativeCrashReporting;
        }

        public PreloadInfoPigeon getPreloadInfo() {
            return this.preloadInfo;
        }

        public Boolean getRevenueAutoTrackingEnabled() {
            return this.revenueAutoTrackingEnabled;
        }

        public Long getSessionTimeout() {
            return this.sessionTimeout;
        }

        public Boolean getSessionsAutoTrackingEnabled() {
            return this.sessionsAutoTrackingEnabled;
        }

        public String getUserProfileID() {
            return this.userProfileID;
        }

        public void setAdvIdentifiersTracking(Boolean bool) {
            this.advIdentifiersTracking = bool;
        }

        public void setAnrMonitoring(Boolean bool) {
            this.anrMonitoring = bool;
        }

        public void setAnrMonitoringTimeout(Long l10) {
            this.anrMonitoringTimeout = l10;
        }

        public void setApiKey(String str) {
            if (str != null) {
                this.apiKey = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"apiKey\" is null.");
        }

        public void setAppBuildNumber(Long l10) {
            this.appBuildNumber = l10;
        }

        public void setAppEnvironment(Map<String, String> map) {
            this.appEnvironment = map;
        }

        public void setAppOpenTrackingEnabled(Boolean bool) {
            this.appOpenTrackingEnabled = bool;
        }

        public void setAppVersion(String str) {
            this.appVersion = str;
        }

        public void setCrashReporting(Boolean bool) {
            this.crashReporting = bool;
        }

        public void setCustomHosts(List<String> list) {
            this.customHosts = list;
        }

        public void setDataSendingEnabled(Boolean bool) {
            this.dataSendingEnabled = bool;
        }

        public void setDeviceType(String str) {
            this.deviceType = str;
        }

        public void setDispatchPeriodSeconds(Long l10) {
            this.dispatchPeriodSeconds = l10;
        }

        public void setErrorEnvironment(Map<String, String> map) {
            this.errorEnvironment = map;
        }

        public void setFirstActivationAsUpdate(Boolean bool) {
            this.firstActivationAsUpdate = bool;
        }

        public void setLocation(LocationPigeon locationPigeon) {
            this.location = locationPigeon;
        }

        public void setLocationTracking(Boolean bool) {
            this.locationTracking = bool;
        }

        public void setLogs(Boolean bool) {
            this.logs = bool;
        }

        public void setMaxReportsCount(Long l10) {
            this.maxReportsCount = l10;
        }

        public void setMaxReportsInDatabaseCount(Long l10) {
            this.maxReportsInDatabaseCount = l10;
        }

        public void setNativeCrashReporting(Boolean bool) {
            this.nativeCrashReporting = bool;
        }

        public void setPreloadInfo(PreloadInfoPigeon preloadInfoPigeon) {
            this.preloadInfo = preloadInfoPigeon;
        }

        public void setRevenueAutoTrackingEnabled(Boolean bool) {
            this.revenueAutoTrackingEnabled = bool;
        }

        public void setSessionTimeout(Long l10) {
            this.sessionTimeout = l10;
        }

        public void setSessionsAutoTrackingEnabled(Boolean bool) {
            this.sessionsAutoTrackingEnabled = bool;
        }

        public void setUserProfileID(String str) {
            this.userProfileID = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> arrayList = new ArrayList<>(26);
            arrayList.add(this.apiKey);
            arrayList.add(this.advIdentifiersTracking);
            arrayList.add(this.anrMonitoring);
            arrayList.add(this.anrMonitoringTimeout);
            arrayList.add(this.appBuildNumber);
            arrayList.add(this.appEnvironment);
            arrayList.add(this.appOpenTrackingEnabled);
            arrayList.add(this.appVersion);
            arrayList.add(this.crashReporting);
            arrayList.add(this.customHosts);
            arrayList.add(this.dataSendingEnabled);
            arrayList.add(this.deviceType);
            arrayList.add(this.dispatchPeriodSeconds);
            arrayList.add(this.errorEnvironment);
            arrayList.add(this.firstActivationAsUpdate);
            LocationPigeon locationPigeon = this.location;
            ArrayList<Object> arrayList2 = null;
            if (locationPigeon == null) {
                list = null;
            } else {
                list = locationPigeon.toList();
            }
            arrayList.add(list);
            arrayList.add(this.locationTracking);
            arrayList.add(this.logs);
            arrayList.add(this.maxReportsCount);
            arrayList.add(this.maxReportsInDatabaseCount);
            arrayList.add(this.nativeCrashReporting);
            PreloadInfoPigeon preloadInfoPigeon = this.preloadInfo;
            if (preloadInfoPigeon != null) {
                arrayList2 = preloadInfoPigeon.toList();
            }
            arrayList.add(arrayList2);
            arrayList.add(this.revenueAutoTrackingEnabled);
            arrayList.add(this.sessionTimeout);
            arrayList.add(this.sessionsAutoTrackingEnabled);
            arrayList.add(this.userProfileID);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class AppMetricaDeferredDeeplinkErrorPigeon {
        private String description;
        private String message;
        private AppMetricaDeferredDeeplinkReasonPigeon reason;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String description;
            private String message;
            private AppMetricaDeferredDeeplinkReasonPigeon reason;

            public AppMetricaDeferredDeeplinkErrorPigeon build() {
                AppMetricaDeferredDeeplinkErrorPigeon appMetricaDeferredDeeplinkErrorPigeon = new AppMetricaDeferredDeeplinkErrorPigeon();
                appMetricaDeferredDeeplinkErrorPigeon.setReason(this.reason);
                appMetricaDeferredDeeplinkErrorPigeon.setDescription(this.description);
                appMetricaDeferredDeeplinkErrorPigeon.setMessage(this.message);
                return appMetricaDeferredDeeplinkErrorPigeon;
            }

            public Builder setDescription(String str) {
                this.description = str;
                return this;
            }

            public Builder setMessage(String str) {
                this.message = str;
                return this;
            }

            public Builder setReason(AppMetricaDeferredDeeplinkReasonPigeon appMetricaDeferredDeeplinkReasonPigeon) {
                this.reason = appMetricaDeferredDeeplinkReasonPigeon;
                return this;
            }
        }

        AppMetricaDeferredDeeplinkErrorPigeon() {
        }

        static AppMetricaDeferredDeeplinkErrorPigeon fromList(ArrayList<Object> arrayList) {
            AppMetricaDeferredDeeplinkReasonPigeon appMetricaDeferredDeeplinkReasonPigeon;
            AppMetricaDeferredDeeplinkErrorPigeon appMetricaDeferredDeeplinkErrorPigeon = new AppMetricaDeferredDeeplinkErrorPigeon();
            Object obj = arrayList.get(0);
            if (obj == null) {
                appMetricaDeferredDeeplinkReasonPigeon = null;
            } else {
                appMetricaDeferredDeeplinkReasonPigeon = AppMetricaDeferredDeeplinkReasonPigeon.values()[((Integer) obj).intValue()];
            }
            appMetricaDeferredDeeplinkErrorPigeon.setReason(appMetricaDeferredDeeplinkReasonPigeon);
            appMetricaDeferredDeeplinkErrorPigeon.setDescription((String) arrayList.get(1));
            appMetricaDeferredDeeplinkErrorPigeon.setMessage((String) arrayList.get(2));
            return appMetricaDeferredDeeplinkErrorPigeon;
        }

        public String getDescription() {
            return this.description;
        }

        public String getMessage() {
            return this.message;
        }

        public AppMetricaDeferredDeeplinkReasonPigeon getReason() {
            return this.reason;
        }

        public void setDescription(String str) {
            if (str != null) {
                this.description = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"description\" is null.");
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setReason(AppMetricaDeferredDeeplinkReasonPigeon appMetricaDeferredDeeplinkReasonPigeon) {
            if (appMetricaDeferredDeeplinkReasonPigeon != null) {
                this.reason = appMetricaDeferredDeeplinkReasonPigeon;
                return;
            }
            throw new IllegalStateException("Nonnull field \"reason\" is null.");
        }

        ArrayList<Object> toList() {
            Integer valueOf;
            ArrayList<Object> arrayList = new ArrayList<>(3);
            AppMetricaDeferredDeeplinkReasonPigeon appMetricaDeferredDeeplinkReasonPigeon = this.reason;
            if (appMetricaDeferredDeeplinkReasonPigeon == null) {
                valueOf = null;
            } else {
                valueOf = Integer.valueOf(appMetricaDeferredDeeplinkReasonPigeon.index);
            }
            arrayList.add(valueOf);
            arrayList.add(this.description);
            arrayList.add(this.message);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class AppMetricaDeferredDeeplinkParametersPigeon {
        private AppMetricaDeferredDeeplinkErrorPigeon error;
        private Map<String, String> parameters;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private AppMetricaDeferredDeeplinkErrorPigeon error;
            private Map<String, String> parameters;

            public AppMetricaDeferredDeeplinkParametersPigeon build() {
                AppMetricaDeferredDeeplinkParametersPigeon appMetricaDeferredDeeplinkParametersPigeon = new AppMetricaDeferredDeeplinkParametersPigeon();
                appMetricaDeferredDeeplinkParametersPigeon.setParameters(this.parameters);
                appMetricaDeferredDeeplinkParametersPigeon.setError(this.error);
                return appMetricaDeferredDeeplinkParametersPigeon;
            }

            public Builder setError(AppMetricaDeferredDeeplinkErrorPigeon appMetricaDeferredDeeplinkErrorPigeon) {
                this.error = appMetricaDeferredDeeplinkErrorPigeon;
                return this;
            }

            public Builder setParameters(Map<String, String> map) {
                this.parameters = map;
                return this;
            }
        }

        static AppMetricaDeferredDeeplinkParametersPigeon fromList(ArrayList<Object> arrayList) {
            AppMetricaDeferredDeeplinkErrorPigeon fromList;
            AppMetricaDeferredDeeplinkParametersPigeon appMetricaDeferredDeeplinkParametersPigeon = new AppMetricaDeferredDeeplinkParametersPigeon();
            appMetricaDeferredDeeplinkParametersPigeon.setParameters((Map) arrayList.get(0));
            Object obj = arrayList.get(1);
            if (obj == null) {
                fromList = null;
            } else {
                fromList = AppMetricaDeferredDeeplinkErrorPigeon.fromList((ArrayList) obj);
            }
            appMetricaDeferredDeeplinkParametersPigeon.setError(fromList);
            return appMetricaDeferredDeeplinkParametersPigeon;
        }

        public AppMetricaDeferredDeeplinkErrorPigeon getError() {
            return this.error;
        }

        public Map<String, String> getParameters() {
            return this.parameters;
        }

        public void setError(AppMetricaDeferredDeeplinkErrorPigeon appMetricaDeferredDeeplinkErrorPigeon) {
            this.error = appMetricaDeferredDeeplinkErrorPigeon;
        }

        public void setParameters(Map<String, String> map) {
            this.parameters = map;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.parameters);
            AppMetricaDeferredDeeplinkErrorPigeon appMetricaDeferredDeeplinkErrorPigeon = this.error;
            if (appMetricaDeferredDeeplinkErrorPigeon == null) {
                list = null;
            } else {
                list = appMetricaDeferredDeeplinkErrorPigeon.toList();
            }
            arrayList.add(list);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class AppMetricaDeferredDeeplinkPigeon {
        private String deeplink;
        private AppMetricaDeferredDeeplinkErrorPigeon error;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String deeplink;
            private AppMetricaDeferredDeeplinkErrorPigeon error;

            public AppMetricaDeferredDeeplinkPigeon build() {
                AppMetricaDeferredDeeplinkPigeon appMetricaDeferredDeeplinkPigeon = new AppMetricaDeferredDeeplinkPigeon();
                appMetricaDeferredDeeplinkPigeon.setDeeplink(this.deeplink);
                appMetricaDeferredDeeplinkPigeon.setError(this.error);
                return appMetricaDeferredDeeplinkPigeon;
            }

            public Builder setDeeplink(String str) {
                this.deeplink = str;
                return this;
            }

            public Builder setError(AppMetricaDeferredDeeplinkErrorPigeon appMetricaDeferredDeeplinkErrorPigeon) {
                this.error = appMetricaDeferredDeeplinkErrorPigeon;
                return this;
            }
        }

        static AppMetricaDeferredDeeplinkPigeon fromList(ArrayList<Object> arrayList) {
            AppMetricaDeferredDeeplinkErrorPigeon fromList;
            AppMetricaDeferredDeeplinkPigeon appMetricaDeferredDeeplinkPigeon = new AppMetricaDeferredDeeplinkPigeon();
            appMetricaDeferredDeeplinkPigeon.setDeeplink((String) arrayList.get(0));
            Object obj = arrayList.get(1);
            if (obj == null) {
                fromList = null;
            } else {
                fromList = AppMetricaDeferredDeeplinkErrorPigeon.fromList((ArrayList) obj);
            }
            appMetricaDeferredDeeplinkPigeon.setError(fromList);
            return appMetricaDeferredDeeplinkPigeon;
        }

        public String getDeeplink() {
            return this.deeplink;
        }

        public AppMetricaDeferredDeeplinkErrorPigeon getError() {
            return this.error;
        }

        public void setDeeplink(String str) {
            this.deeplink = str;
        }

        public void setError(AppMetricaDeferredDeeplinkErrorPigeon appMetricaDeferredDeeplinkErrorPigeon) {
            this.error = appMetricaDeferredDeeplinkErrorPigeon;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.deeplink);
            AppMetricaDeferredDeeplinkErrorPigeon appMetricaDeferredDeeplinkErrorPigeon = this.error;
            if (appMetricaDeferredDeeplinkErrorPigeon == null) {
                list = null;
            } else {
                list = appMetricaDeferredDeeplinkErrorPigeon.toList();
            }
            arrayList.add(list);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public enum AppMetricaDeferredDeeplinkReasonPigeon {
        NOT_A_FIRST_LAUNCH(0),
        PARSE_ERROR(1),
        UNKNOWN(2),
        NO_REFERRER(3),
        NO_ERROR(4);
        
        final int index;

        AppMetricaDeferredDeeplinkReasonPigeon(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public interface AppMetricaPigeon {
        static MessageCodec<Object> getCodec() {
            return AppMetricaPigeonCodec.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$0(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.activate((AppMetricaConfigPigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$1(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.activateReporter((ReporterConfigPigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$10(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                appMetricaPigeon.putErrorEnvironmentValue((String) arrayList2.get(0), (String) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$11(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportAdRevenue((AdRevenuePigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$12(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportAppOpen((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$13(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportECommerce((ECommerceEventPigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$14(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                appMetricaPigeon.reportError((ErrorDetailsPigeon) arrayList2.get(0), (String) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$15(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                appMetricaPigeon.reportErrorWithGroup((String) arrayList2.get(0), (ErrorDetailsPigeon) arrayList2.get(1), (String) arrayList2.get(2));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$16(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportEvent((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$17(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                appMetricaPigeon.reportEventWithJson((String) arrayList2.get(0), (String) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$18(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportExternalAttribution((ExternalAttributionPigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$19(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportReferralUrl((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$2(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.clearAppEnvironment();
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$20(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportRevenue((RevenuePigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$21(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportUnhandledException((ErrorDetailsPigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$22(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.reportUserProfile((UserProfilePigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$23(AppMetricaPigeon appMetricaPigeon, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            appMetricaPigeon.requestDeferredDeeplink(new Result<AppMetricaDeferredDeeplinkPigeon>() { // from class: io.appmetrica.analytics.flutter.pigeon.Pigeon.AppMetricaPigeon.1
                @Override // io.appmetrica.analytics.flutter.pigeon.Pigeon.Result
                public void error(Throwable th) {
                    reply.reply(Pigeon.wrapError(th));
                }

                @Override // io.appmetrica.analytics.flutter.pigeon.Pigeon.Result
                public void success(AppMetricaDeferredDeeplinkPigeon appMetricaDeferredDeeplinkPigeon) {
                    arrayList.add(0, appMetricaDeferredDeeplinkPigeon);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$24(AppMetricaPigeon appMetricaPigeon, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            appMetricaPigeon.requestDeferredDeeplinkParameters(new Result<AppMetricaDeferredDeeplinkParametersPigeon>() { // from class: io.appmetrica.analytics.flutter.pigeon.Pigeon.AppMetricaPigeon.2
                @Override // io.appmetrica.analytics.flutter.pigeon.Pigeon.Result
                public void error(Throwable th) {
                    reply.reply(Pigeon.wrapError(th));
                }

                @Override // io.appmetrica.analytics.flutter.pigeon.Pigeon.Result
                public void success(AppMetricaDeferredDeeplinkParametersPigeon appMetricaDeferredDeeplinkParametersPigeon) {
                    arrayList.add(0, appMetricaDeferredDeeplinkParametersPigeon);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$25(AppMetricaPigeon appMetricaPigeon, Object obj, final BasicMessageChannel.Reply reply) {
            final ArrayList arrayList = new ArrayList();
            appMetricaPigeon.requestStartupParams((List) ((ArrayList) obj).get(0), new Result<StartupParamsPigeon>() { // from class: io.appmetrica.analytics.flutter.pigeon.Pigeon.AppMetricaPigeon.3
                @Override // io.appmetrica.analytics.flutter.pigeon.Pigeon.Result
                public void error(Throwable th) {
                    reply.reply(Pigeon.wrapError(th));
                }

                @Override // io.appmetrica.analytics.flutter.pigeon.Pigeon.Result
                public void success(StartupParamsPigeon startupParamsPigeon) {
                    arrayList.add(0, startupParamsPigeon);
                    reply.reply(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$26(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.resumeSession();
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$27(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.sendEventsBuffer();
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$28(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.setAdvIdentifiersTracking((Boolean) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$29(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.setDataSendingEnabled((Boolean) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$3(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.enableActivityAutoTracking();
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$30(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.setLocation((LocationPigeon) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$31(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.setLocationTracking((Boolean) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$32(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.setUserProfileID((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$33(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.handlePluginInitFinished();
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$34(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.touchReporter((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$4(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, appMetricaPigeon.getDeviceId());
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$5(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, appMetricaPigeon.getLibraryApiLevel());
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$6(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, appMetricaPigeon.getLibraryVersion());
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$7(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, appMetricaPigeon.getUuid());
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$8(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                appMetricaPigeon.pauseSession();
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$9(AppMetricaPigeon appMetricaPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                appMetricaPigeon.putAppEnvironmentValue((String) arrayList2.get(0), (String) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        static void setup(BinaryMessenger binaryMessenger, final AppMetricaPigeon appMetricaPigeon) {
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.activate", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.b
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$0(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.activateReporter", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.d
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$1(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.clearAppEnvironment", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.p
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$2(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.enableActivityAutoTracking", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.v
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$3(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.getDeviceId", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.w
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$4(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.getLibraryApiLevel", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.y
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$5(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.getLibraryVersion", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.z
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$6(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.getUuid", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.a0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$7(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.pauseSession", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.b0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$8(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.putAppEnvironmentValue", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.c0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$9(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel10.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.putErrorEnvironmentValue", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.m
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$10(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel11.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportAdRevenue", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.x
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$11(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel12.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportAppOpen", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.d0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$12(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel13.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportECommerce", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.e0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$13(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel14.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel15 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportError", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel15.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.f0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$14(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel15.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel16 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportErrorWithGroup", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel16.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.g0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$15(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel16.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel17 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportEvent", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel17.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.h0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$16(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel17.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel18 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportEventWithJson", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel18.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.i0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$17(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel18.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel19 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportExternalAttribution", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel19.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.j0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$18(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel19.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel20 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportReferralUrl", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel20.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.c
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$19(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel20.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel21 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportRevenue", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel21.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.e
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$20(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel21.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel22 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportUnhandledException", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel22.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.f
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$21(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel22.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel23 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.reportUserProfile", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel23.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.g
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$22(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel23.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel24 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.requestDeferredDeeplink", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel24.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.h
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$23(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel24.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel25 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.requestDeferredDeeplinkParameters", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel25.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.i
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$24(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel25.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel26 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.requestStartupParams", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel26.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.j
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$25(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel26.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel27 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.resumeSession", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel27.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.k
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$26(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel27.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel28 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.sendEventsBuffer", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel28.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.l
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$27(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel28.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel29 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.setAdvIdentifiersTracking", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel29.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.n
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$28(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel29.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel30 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.setDataSendingEnabled", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel30.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.o
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$29(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel30.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel31 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.setLocation", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel31.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.q
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$30(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel31.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel32 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.setLocationTracking", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel32.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.r
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$31(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel32.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel33 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.setUserProfileID", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel33.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.s
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$32(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel33.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel34 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.handlePluginInitFinished", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel34.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.t
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$33(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel34.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel35 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaPigeon.touchReporter", getCodec());
            if (appMetricaPigeon != null) {
                basicMessageChannel35.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.u
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.AppMetricaPigeon.lambda$setup$34(Pigeon.AppMetricaPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel35.setMessageHandler(null);
            }
        }

        void activate(AppMetricaConfigPigeon appMetricaConfigPigeon);

        void activateReporter(ReporterConfigPigeon reporterConfigPigeon);

        void clearAppEnvironment();

        void enableActivityAutoTracking();

        String getDeviceId();

        Long getLibraryApiLevel();

        String getLibraryVersion();

        String getUuid();

        void handlePluginInitFinished();

        void pauseSession();

        void putAppEnvironmentValue(String str, String str2);

        void putErrorEnvironmentValue(String str, String str2);

        void reportAdRevenue(AdRevenuePigeon adRevenuePigeon);

        void reportAppOpen(String str);

        void reportECommerce(ECommerceEventPigeon eCommerceEventPigeon);

        void reportError(ErrorDetailsPigeon errorDetailsPigeon, String str);

        void reportErrorWithGroup(String str, ErrorDetailsPigeon errorDetailsPigeon, String str2);

        void reportEvent(String str);

        void reportEventWithJson(String str, String str2);

        void reportExternalAttribution(ExternalAttributionPigeon externalAttributionPigeon);

        void reportReferralUrl(String str);

        void reportRevenue(RevenuePigeon revenuePigeon);

        void reportUnhandledException(ErrorDetailsPigeon errorDetailsPigeon);

        void reportUserProfile(UserProfilePigeon userProfilePigeon);

        void requestDeferredDeeplink(Result<AppMetricaDeferredDeeplinkPigeon> result);

        void requestDeferredDeeplinkParameters(Result<AppMetricaDeferredDeeplinkParametersPigeon> result);

        void requestStartupParams(List<String> list, Result<StartupParamsPigeon> result);

        void resumeSession();

        void sendEventsBuffer();

        void setAdvIdentifiersTracking(Boolean bool);

        void setDataSendingEnabled(Boolean bool);

        void setLocation(LocationPigeon locationPigeon);

        void setLocationTracking(Boolean bool);

        void setUserProfileID(String str);

        void touchReporter(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class AppMetricaPigeonCodec extends StandardMessageCodec {
        public static final AppMetricaPigeonCodec INSTANCE = new AppMetricaPigeonCodec();

        private AppMetricaPigeonCodec() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b10, ByteBuffer byteBuffer) {
            switch (b10) {
                case Byte.MIN_VALUE:
                    return AdRevenuePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -127:
                    return AppMetricaConfigPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -126:
                    return AppMetricaDeferredDeeplinkErrorPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -125:
                    return AppMetricaDeferredDeeplinkParametersPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -124:
                    return AppMetricaDeferredDeeplinkPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -123:
                    return ECommerceAmountPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -122:
                    return ECommerceAmountPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -121:
                    return ECommerceCartItemPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -120:
                    return ECommerceEventPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -119:
                    return ECommerceOrderPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -118:
                    return ECommercePricePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -117:
                    return ECommercePricePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -116:
                    return ECommerceProductPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -115:
                    return ECommerceProductPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -114:
                    return ECommerceReferrerPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -113:
                    return ECommerceScreenPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -112:
                    return ErrorDetailsPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -111:
                    return ErrorDetailsPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -110:
                    return ExternalAttributionPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -109:
                    return LocationPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -108:
                    return PreloadInfoPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -107:
                    return ReceiptPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -106:
                    return ReporterConfigPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -105:
                    return RevenuePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -104:
                    return StackTraceElementPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -103:
                    return StartupParamsItemPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -102:
                    return StartupParamsPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -101:
                    return StartupParamsReasonPigeon.fromList((ArrayList) readValue(byteBuffer));
                case ReviewErrorCode.INTERNAL_ERROR /* -100 */:
                    return StartupParamsResultPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -99:
                    return UserProfileAttributePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -98:
                    return UserProfilePigeon.fromList((ArrayList) readValue(byteBuffer));
                default:
                    return super.readValueOfType(b10, byteBuffer);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            if (obj instanceof AdRevenuePigeon) {
                byteArrayOutputStream.write(128);
                writeValue(byteArrayOutputStream, ((AdRevenuePigeon) obj).toList());
            } else if (obj instanceof AppMetricaConfigPigeon) {
                byteArrayOutputStream.write(129);
                writeValue(byteArrayOutputStream, ((AppMetricaConfigPigeon) obj).toList());
            } else if (obj instanceof AppMetricaDeferredDeeplinkErrorPigeon) {
                byteArrayOutputStream.write(130);
                writeValue(byteArrayOutputStream, ((AppMetricaDeferredDeeplinkErrorPigeon) obj).toList());
            } else if (obj instanceof AppMetricaDeferredDeeplinkParametersPigeon) {
                byteArrayOutputStream.write(131);
                writeValue(byteArrayOutputStream, ((AppMetricaDeferredDeeplinkParametersPigeon) obj).toList());
            } else if (obj instanceof AppMetricaDeferredDeeplinkPigeon) {
                byteArrayOutputStream.write(132);
                writeValue(byteArrayOutputStream, ((AppMetricaDeferredDeeplinkPigeon) obj).toList());
            } else {
                boolean z10 = obj instanceof ECommerceAmountPigeon;
                if (z10) {
                    byteArrayOutputStream.write(133);
                    writeValue(byteArrayOutputStream, ((ECommerceAmountPigeon) obj).toList());
                } else if (z10) {
                    byteArrayOutputStream.write(134);
                    writeValue(byteArrayOutputStream, ((ECommerceAmountPigeon) obj).toList());
                } else if (obj instanceof ECommerceCartItemPigeon) {
                    byteArrayOutputStream.write(135);
                    writeValue(byteArrayOutputStream, ((ECommerceCartItemPigeon) obj).toList());
                } else if (obj instanceof ECommerceEventPigeon) {
                    byteArrayOutputStream.write(136);
                    writeValue(byteArrayOutputStream, ((ECommerceEventPigeon) obj).toList());
                } else if (obj instanceof ECommerceOrderPigeon) {
                    byteArrayOutputStream.write(137);
                    writeValue(byteArrayOutputStream, ((ECommerceOrderPigeon) obj).toList());
                } else {
                    boolean z11 = obj instanceof ECommercePricePigeon;
                    if (z11) {
                        byteArrayOutputStream.write(138);
                        writeValue(byteArrayOutputStream, ((ECommercePricePigeon) obj).toList());
                    } else if (z11) {
                        byteArrayOutputStream.write(139);
                        writeValue(byteArrayOutputStream, ((ECommercePricePigeon) obj).toList());
                    } else {
                        boolean z12 = obj instanceof ECommerceProductPigeon;
                        if (z12) {
                            byteArrayOutputStream.write(140);
                            writeValue(byteArrayOutputStream, ((ECommerceProductPigeon) obj).toList());
                        } else if (z12) {
                            byteArrayOutputStream.write(141);
                            writeValue(byteArrayOutputStream, ((ECommerceProductPigeon) obj).toList());
                        } else if (obj instanceof ECommerceReferrerPigeon) {
                            byteArrayOutputStream.write(142);
                            writeValue(byteArrayOutputStream, ((ECommerceReferrerPigeon) obj).toList());
                        } else if (obj instanceof ECommerceScreenPigeon) {
                            byteArrayOutputStream.write(143);
                            writeValue(byteArrayOutputStream, ((ECommerceScreenPigeon) obj).toList());
                        } else {
                            boolean z13 = obj instanceof ErrorDetailsPigeon;
                            if (z13) {
                                byteArrayOutputStream.write(144);
                                writeValue(byteArrayOutputStream, ((ErrorDetailsPigeon) obj).toList());
                            } else if (z13) {
                                byteArrayOutputStream.write(145);
                                writeValue(byteArrayOutputStream, ((ErrorDetailsPigeon) obj).toList());
                            } else if (obj instanceof ExternalAttributionPigeon) {
                                byteArrayOutputStream.write(146);
                                writeValue(byteArrayOutputStream, ((ExternalAttributionPigeon) obj).toList());
                            } else if (obj instanceof LocationPigeon) {
                                byteArrayOutputStream.write(147);
                                writeValue(byteArrayOutputStream, ((LocationPigeon) obj).toList());
                            } else if (obj instanceof PreloadInfoPigeon) {
                                byteArrayOutputStream.write(148);
                                writeValue(byteArrayOutputStream, ((PreloadInfoPigeon) obj).toList());
                            } else if (obj instanceof ReceiptPigeon) {
                                byteArrayOutputStream.write(149);
                                writeValue(byteArrayOutputStream, ((ReceiptPigeon) obj).toList());
                            } else if (obj instanceof ReporterConfigPigeon) {
                                byteArrayOutputStream.write(150);
                                writeValue(byteArrayOutputStream, ((ReporterConfigPigeon) obj).toList());
                            } else if (obj instanceof RevenuePigeon) {
                                byteArrayOutputStream.write(151);
                                writeValue(byteArrayOutputStream, ((RevenuePigeon) obj).toList());
                            } else if (obj instanceof StackTraceElementPigeon) {
                                byteArrayOutputStream.write(152);
                                writeValue(byteArrayOutputStream, ((StackTraceElementPigeon) obj).toList());
                            } else if (obj instanceof StartupParamsItemPigeon) {
                                byteArrayOutputStream.write(153);
                                writeValue(byteArrayOutputStream, ((StartupParamsItemPigeon) obj).toList());
                            } else if (obj instanceof StartupParamsPigeon) {
                                byteArrayOutputStream.write(154);
                                writeValue(byteArrayOutputStream, ((StartupParamsPigeon) obj).toList());
                            } else if (obj instanceof StartupParamsReasonPigeon) {
                                byteArrayOutputStream.write(ModuleDescriptor.MODULE_VERSION);
                                writeValue(byteArrayOutputStream, ((StartupParamsReasonPigeon) obj).toList());
                            } else if (obj instanceof StartupParamsResultPigeon) {
                                byteArrayOutputStream.write(156);
                                writeValue(byteArrayOutputStream, ((StartupParamsResultPigeon) obj).toList());
                            } else if (obj instanceof UserProfileAttributePigeon) {
                                byteArrayOutputStream.write(157);
                                writeValue(byteArrayOutputStream, ((UserProfileAttributePigeon) obj).toList());
                            } else if (obj instanceof UserProfilePigeon) {
                                byteArrayOutputStream.write(158);
                                writeValue(byteArrayOutputStream, ((UserProfilePigeon) obj).toList());
                            } else {
                                super.writeValue(byteArrayOutputStream, obj);
                            }
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class ECommerceAmountPigeon {
        private String amount;
        private String currency;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String amount;
            private String currency;

            public ECommerceAmountPigeon build() {
                ECommerceAmountPigeon eCommerceAmountPigeon = new ECommerceAmountPigeon();
                eCommerceAmountPigeon.setAmount(this.amount);
                eCommerceAmountPigeon.setCurrency(this.currency);
                return eCommerceAmountPigeon;
            }

            public Builder setAmount(String str) {
                this.amount = str;
                return this;
            }

            public Builder setCurrency(String str) {
                this.currency = str;
                return this;
            }
        }

        ECommerceAmountPigeon() {
        }

        static ECommerceAmountPigeon fromList(ArrayList<Object> arrayList) {
            ECommerceAmountPigeon eCommerceAmountPigeon = new ECommerceAmountPigeon();
            eCommerceAmountPigeon.setAmount((String) arrayList.get(0));
            eCommerceAmountPigeon.setCurrency((String) arrayList.get(1));
            return eCommerceAmountPigeon;
        }

        public String getAmount() {
            return this.amount;
        }

        public String getCurrency() {
            return this.currency;
        }

        public void setAmount(String str) {
            if (str != null) {
                this.amount = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"amount\" is null.");
        }

        public void setCurrency(String str) {
            if (str != null) {
                this.currency = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"currency\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.amount);
            arrayList.add(this.currency);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ECommerceCartItemPigeon {
        private ECommerceProductPigeon product;
        private String quantity;
        private ECommerceReferrerPigeon referrer;
        private ECommercePricePigeon revenue;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private ECommerceProductPigeon product;
            private String quantity;
            private ECommerceReferrerPigeon referrer;
            private ECommercePricePigeon revenue;

            public ECommerceCartItemPigeon build() {
                ECommerceCartItemPigeon eCommerceCartItemPigeon = new ECommerceCartItemPigeon();
                eCommerceCartItemPigeon.setProduct(this.product);
                eCommerceCartItemPigeon.setQuantity(this.quantity);
                eCommerceCartItemPigeon.setRevenue(this.revenue);
                eCommerceCartItemPigeon.setReferrer(this.referrer);
                return eCommerceCartItemPigeon;
            }

            public Builder setProduct(ECommerceProductPigeon eCommerceProductPigeon) {
                this.product = eCommerceProductPigeon;
                return this;
            }

            public Builder setQuantity(String str) {
                this.quantity = str;
                return this;
            }

            public Builder setReferrer(ECommerceReferrerPigeon eCommerceReferrerPigeon) {
                this.referrer = eCommerceReferrerPigeon;
                return this;
            }

            public Builder setRevenue(ECommercePricePigeon eCommercePricePigeon) {
                this.revenue = eCommercePricePigeon;
                return this;
            }
        }

        ECommerceCartItemPigeon() {
        }

        static ECommerceCartItemPigeon fromList(ArrayList<Object> arrayList) {
            ECommerceProductPigeon fromList;
            ECommercePricePigeon fromList2;
            ECommerceCartItemPigeon eCommerceCartItemPigeon = new ECommerceCartItemPigeon();
            Object obj = arrayList.get(0);
            ECommerceReferrerPigeon eCommerceReferrerPigeon = null;
            if (obj == null) {
                fromList = null;
            } else {
                fromList = ECommerceProductPigeon.fromList((ArrayList) obj);
            }
            eCommerceCartItemPigeon.setProduct(fromList);
            eCommerceCartItemPigeon.setQuantity((String) arrayList.get(1));
            Object obj2 = arrayList.get(2);
            if (obj2 == null) {
                fromList2 = null;
            } else {
                fromList2 = ECommercePricePigeon.fromList((ArrayList) obj2);
            }
            eCommerceCartItemPigeon.setRevenue(fromList2);
            Object obj3 = arrayList.get(3);
            if (obj3 != null) {
                eCommerceReferrerPigeon = ECommerceReferrerPigeon.fromList((ArrayList) obj3);
            }
            eCommerceCartItemPigeon.setReferrer(eCommerceReferrerPigeon);
            return eCommerceCartItemPigeon;
        }

        public ECommerceProductPigeon getProduct() {
            return this.product;
        }

        public String getQuantity() {
            return this.quantity;
        }

        public ECommerceReferrerPigeon getReferrer() {
            return this.referrer;
        }

        public ECommercePricePigeon getRevenue() {
            return this.revenue;
        }

        public void setProduct(ECommerceProductPigeon eCommerceProductPigeon) {
            if (eCommerceProductPigeon != null) {
                this.product = eCommerceProductPigeon;
                return;
            }
            throw new IllegalStateException("Nonnull field \"product\" is null.");
        }

        public void setQuantity(String str) {
            if (str != null) {
                this.quantity = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"quantity\" is null.");
        }

        public void setReferrer(ECommerceReferrerPigeon eCommerceReferrerPigeon) {
            this.referrer = eCommerceReferrerPigeon;
        }

        public void setRevenue(ECommercePricePigeon eCommercePricePigeon) {
            if (eCommercePricePigeon != null) {
                this.revenue = eCommercePricePigeon;
                return;
            }
            throw new IllegalStateException("Nonnull field \"revenue\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> list2;
            ArrayList<Object> arrayList = new ArrayList<>(4);
            ECommerceProductPigeon eCommerceProductPigeon = this.product;
            ArrayList<Object> arrayList2 = null;
            if (eCommerceProductPigeon == null) {
                list = null;
            } else {
                list = eCommerceProductPigeon.toList();
            }
            arrayList.add(list);
            arrayList.add(this.quantity);
            ECommercePricePigeon eCommercePricePigeon = this.revenue;
            if (eCommercePricePigeon == null) {
                list2 = null;
            } else {
                list2 = eCommercePricePigeon.toList();
            }
            arrayList.add(list2);
            ECommerceReferrerPigeon eCommerceReferrerPigeon = this.referrer;
            if (eCommerceReferrerPigeon != null) {
                arrayList2 = eCommerceReferrerPigeon.toList();
            }
            arrayList.add(arrayList2);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ECommerceEventPigeon {
        private ECommerceCartItemPigeon cartItem;
        private String eventType;
        private ECommerceOrderPigeon order;
        private ECommerceProductPigeon product;
        private ECommerceReferrerPigeon referrer;
        private ECommerceScreenPigeon screen;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private ECommerceCartItemPigeon cartItem;
            private String eventType;
            private ECommerceOrderPigeon order;
            private ECommerceProductPigeon product;
            private ECommerceReferrerPigeon referrer;
            private ECommerceScreenPigeon screen;

            public ECommerceEventPigeon build() {
                ECommerceEventPigeon eCommerceEventPigeon = new ECommerceEventPigeon();
                eCommerceEventPigeon.setEventType(this.eventType);
                eCommerceEventPigeon.setCartItem(this.cartItem);
                eCommerceEventPigeon.setOrder(this.order);
                eCommerceEventPigeon.setProduct(this.product);
                eCommerceEventPigeon.setReferrer(this.referrer);
                eCommerceEventPigeon.setScreen(this.screen);
                return eCommerceEventPigeon;
            }

            public Builder setCartItem(ECommerceCartItemPigeon eCommerceCartItemPigeon) {
                this.cartItem = eCommerceCartItemPigeon;
                return this;
            }

            public Builder setEventType(String str) {
                this.eventType = str;
                return this;
            }

            public Builder setOrder(ECommerceOrderPigeon eCommerceOrderPigeon) {
                this.order = eCommerceOrderPigeon;
                return this;
            }

            public Builder setProduct(ECommerceProductPigeon eCommerceProductPigeon) {
                this.product = eCommerceProductPigeon;
                return this;
            }

            public Builder setReferrer(ECommerceReferrerPigeon eCommerceReferrerPigeon) {
                this.referrer = eCommerceReferrerPigeon;
                return this;
            }

            public Builder setScreen(ECommerceScreenPigeon eCommerceScreenPigeon) {
                this.screen = eCommerceScreenPigeon;
                return this;
            }
        }

        ECommerceEventPigeon() {
        }

        static ECommerceEventPigeon fromList(ArrayList<Object> arrayList) {
            ECommerceCartItemPigeon fromList;
            ECommerceOrderPigeon fromList2;
            ECommerceProductPigeon fromList3;
            ECommerceReferrerPigeon fromList4;
            ECommerceEventPigeon eCommerceEventPigeon = new ECommerceEventPigeon();
            eCommerceEventPigeon.setEventType((String) arrayList.get(0));
            Object obj = arrayList.get(1);
            ECommerceScreenPigeon eCommerceScreenPigeon = null;
            if (obj == null) {
                fromList = null;
            } else {
                fromList = ECommerceCartItemPigeon.fromList((ArrayList) obj);
            }
            eCommerceEventPigeon.setCartItem(fromList);
            Object obj2 = arrayList.get(2);
            if (obj2 == null) {
                fromList2 = null;
            } else {
                fromList2 = ECommerceOrderPigeon.fromList((ArrayList) obj2);
            }
            eCommerceEventPigeon.setOrder(fromList2);
            Object obj3 = arrayList.get(3);
            if (obj3 == null) {
                fromList3 = null;
            } else {
                fromList3 = ECommerceProductPigeon.fromList((ArrayList) obj3);
            }
            eCommerceEventPigeon.setProduct(fromList3);
            Object obj4 = arrayList.get(4);
            if (obj4 == null) {
                fromList4 = null;
            } else {
                fromList4 = ECommerceReferrerPigeon.fromList((ArrayList) obj4);
            }
            eCommerceEventPigeon.setReferrer(fromList4);
            Object obj5 = arrayList.get(5);
            if (obj5 != null) {
                eCommerceScreenPigeon = ECommerceScreenPigeon.fromList((ArrayList) obj5);
            }
            eCommerceEventPigeon.setScreen(eCommerceScreenPigeon);
            return eCommerceEventPigeon;
        }

        public ECommerceCartItemPigeon getCartItem() {
            return this.cartItem;
        }

        public String getEventType() {
            return this.eventType;
        }

        public ECommerceOrderPigeon getOrder() {
            return this.order;
        }

        public ECommerceProductPigeon getProduct() {
            return this.product;
        }

        public ECommerceReferrerPigeon getReferrer() {
            return this.referrer;
        }

        public ECommerceScreenPigeon getScreen() {
            return this.screen;
        }

        public void setCartItem(ECommerceCartItemPigeon eCommerceCartItemPigeon) {
            this.cartItem = eCommerceCartItemPigeon;
        }

        public void setEventType(String str) {
            if (str != null) {
                this.eventType = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"eventType\" is null.");
        }

        public void setOrder(ECommerceOrderPigeon eCommerceOrderPigeon) {
            this.order = eCommerceOrderPigeon;
        }

        public void setProduct(ECommerceProductPigeon eCommerceProductPigeon) {
            this.product = eCommerceProductPigeon;
        }

        public void setReferrer(ECommerceReferrerPigeon eCommerceReferrerPigeon) {
            this.referrer = eCommerceReferrerPigeon;
        }

        public void setScreen(ECommerceScreenPigeon eCommerceScreenPigeon) {
            this.screen = eCommerceScreenPigeon;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> list2;
            ArrayList<Object> list3;
            ArrayList<Object> list4;
            ArrayList<Object> arrayList = new ArrayList<>(6);
            arrayList.add(this.eventType);
            ECommerceCartItemPigeon eCommerceCartItemPigeon = this.cartItem;
            ArrayList<Object> arrayList2 = null;
            if (eCommerceCartItemPigeon == null) {
                list = null;
            } else {
                list = eCommerceCartItemPigeon.toList();
            }
            arrayList.add(list);
            ECommerceOrderPigeon eCommerceOrderPigeon = this.order;
            if (eCommerceOrderPigeon == null) {
                list2 = null;
            } else {
                list2 = eCommerceOrderPigeon.toList();
            }
            arrayList.add(list2);
            ECommerceProductPigeon eCommerceProductPigeon = this.product;
            if (eCommerceProductPigeon == null) {
                list3 = null;
            } else {
                list3 = eCommerceProductPigeon.toList();
            }
            arrayList.add(list3);
            ECommerceReferrerPigeon eCommerceReferrerPigeon = this.referrer;
            if (eCommerceReferrerPigeon == null) {
                list4 = null;
            } else {
                list4 = eCommerceReferrerPigeon.toList();
            }
            arrayList.add(list4);
            ECommerceScreenPigeon eCommerceScreenPigeon = this.screen;
            if (eCommerceScreenPigeon != null) {
                arrayList2 = eCommerceScreenPigeon.toList();
            }
            arrayList.add(arrayList2);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ECommerceOrderPigeon {
        private String identifier;
        private List<ECommerceCartItemPigeon> items;
        private Map<String, String> payload;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String identifier;
            private List<ECommerceCartItemPigeon> items;
            private Map<String, String> payload;

            public ECommerceOrderPigeon build() {
                ECommerceOrderPigeon eCommerceOrderPigeon = new ECommerceOrderPigeon();
                eCommerceOrderPigeon.setIdentifier(this.identifier);
                eCommerceOrderPigeon.setItems(this.items);
                eCommerceOrderPigeon.setPayload(this.payload);
                return eCommerceOrderPigeon;
            }

            public Builder setIdentifier(String str) {
                this.identifier = str;
                return this;
            }

            public Builder setItems(List<ECommerceCartItemPigeon> list) {
                this.items = list;
                return this;
            }

            public Builder setPayload(Map<String, String> map) {
                this.payload = map;
                return this;
            }
        }

        ECommerceOrderPigeon() {
        }

        static ECommerceOrderPigeon fromList(ArrayList<Object> arrayList) {
            ECommerceOrderPigeon eCommerceOrderPigeon = new ECommerceOrderPigeon();
            eCommerceOrderPigeon.setIdentifier((String) arrayList.get(0));
            eCommerceOrderPigeon.setItems((List) arrayList.get(1));
            eCommerceOrderPigeon.setPayload((Map) arrayList.get(2));
            return eCommerceOrderPigeon;
        }

        public String getIdentifier() {
            return this.identifier;
        }

        public List<ECommerceCartItemPigeon> getItems() {
            return this.items;
        }

        public Map<String, String> getPayload() {
            return this.payload;
        }

        public void setIdentifier(String str) {
            if (str != null) {
                this.identifier = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"identifier\" is null.");
        }

        public void setItems(List<ECommerceCartItemPigeon> list) {
            if (list != null) {
                this.items = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"items\" is null.");
        }

        public void setPayload(Map<String, String> map) {
            this.payload = map;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.identifier);
            arrayList.add(this.items);
            arrayList.add(this.payload);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ECommercePricePigeon {
        private ECommerceAmountPigeon fiat;
        private List<ECommerceAmountPigeon> internalComponents;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private ECommerceAmountPigeon fiat;
            private List<ECommerceAmountPigeon> internalComponents;

            public ECommercePricePigeon build() {
                ECommercePricePigeon eCommercePricePigeon = new ECommercePricePigeon();
                eCommercePricePigeon.setFiat(this.fiat);
                eCommercePricePigeon.setInternalComponents(this.internalComponents);
                return eCommercePricePigeon;
            }

            public Builder setFiat(ECommerceAmountPigeon eCommerceAmountPigeon) {
                this.fiat = eCommerceAmountPigeon;
                return this;
            }

            public Builder setInternalComponents(List<ECommerceAmountPigeon> list) {
                this.internalComponents = list;
                return this;
            }
        }

        ECommercePricePigeon() {
        }

        static ECommercePricePigeon fromList(ArrayList<Object> arrayList) {
            ECommerceAmountPigeon fromList;
            ECommercePricePigeon eCommercePricePigeon = new ECommercePricePigeon();
            Object obj = arrayList.get(0);
            if (obj == null) {
                fromList = null;
            } else {
                fromList = ECommerceAmountPigeon.fromList((ArrayList) obj);
            }
            eCommercePricePigeon.setFiat(fromList);
            eCommercePricePigeon.setInternalComponents((List) arrayList.get(1));
            return eCommercePricePigeon;
        }

        public ECommerceAmountPigeon getFiat() {
            return this.fiat;
        }

        public List<ECommerceAmountPigeon> getInternalComponents() {
            return this.internalComponents;
        }

        public void setFiat(ECommerceAmountPigeon eCommerceAmountPigeon) {
            if (eCommerceAmountPigeon != null) {
                this.fiat = eCommerceAmountPigeon;
                return;
            }
            throw new IllegalStateException("Nonnull field \"fiat\" is null.");
        }

        public void setInternalComponents(List<ECommerceAmountPigeon> list) {
            this.internalComponents = list;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> arrayList = new ArrayList<>(2);
            ECommerceAmountPigeon eCommerceAmountPigeon = this.fiat;
            if (eCommerceAmountPigeon == null) {
                list = null;
            } else {
                list = eCommerceAmountPigeon.toList();
            }
            arrayList.add(list);
            arrayList.add(this.internalComponents);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ECommerceProductPigeon {
        private ECommercePricePigeon actualPrice;
        private List<String> categoriesPath;
        private String name;
        private ECommercePricePigeon originalPrice;
        private Map<String, String> payload;
        private List<String> promocodes;
        private String sku;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private ECommercePricePigeon actualPrice;
            private List<String> categoriesPath;
            private String name;
            private ECommercePricePigeon originalPrice;
            private Map<String, String> payload;
            private List<String> promocodes;
            private String sku;

            public ECommerceProductPigeon build() {
                ECommerceProductPigeon eCommerceProductPigeon = new ECommerceProductPigeon();
                eCommerceProductPigeon.setSku(this.sku);
                eCommerceProductPigeon.setName(this.name);
                eCommerceProductPigeon.setCategoriesPath(this.categoriesPath);
                eCommerceProductPigeon.setPayload(this.payload);
                eCommerceProductPigeon.setActualPrice(this.actualPrice);
                eCommerceProductPigeon.setOriginalPrice(this.originalPrice);
                eCommerceProductPigeon.setPromocodes(this.promocodes);
                return eCommerceProductPigeon;
            }

            public Builder setActualPrice(ECommercePricePigeon eCommercePricePigeon) {
                this.actualPrice = eCommercePricePigeon;
                return this;
            }

            public Builder setCategoriesPath(List<String> list) {
                this.categoriesPath = list;
                return this;
            }

            public Builder setName(String str) {
                this.name = str;
                return this;
            }

            public Builder setOriginalPrice(ECommercePricePigeon eCommercePricePigeon) {
                this.originalPrice = eCommercePricePigeon;
                return this;
            }

            public Builder setPayload(Map<String, String> map) {
                this.payload = map;
                return this;
            }

            public Builder setPromocodes(List<String> list) {
                this.promocodes = list;
                return this;
            }

            public Builder setSku(String str) {
                this.sku = str;
                return this;
            }
        }

        ECommerceProductPigeon() {
        }

        static ECommerceProductPigeon fromList(ArrayList<Object> arrayList) {
            ECommercePricePigeon fromList;
            ECommerceProductPigeon eCommerceProductPigeon = new ECommerceProductPigeon();
            eCommerceProductPigeon.setSku((String) arrayList.get(0));
            eCommerceProductPigeon.setName((String) arrayList.get(1));
            eCommerceProductPigeon.setCategoriesPath((List) arrayList.get(2));
            eCommerceProductPigeon.setPayload((Map) arrayList.get(3));
            Object obj = arrayList.get(4);
            ECommercePricePigeon eCommercePricePigeon = null;
            if (obj == null) {
                fromList = null;
            } else {
                fromList = ECommercePricePigeon.fromList((ArrayList) obj);
            }
            eCommerceProductPigeon.setActualPrice(fromList);
            Object obj2 = arrayList.get(5);
            if (obj2 != null) {
                eCommercePricePigeon = ECommercePricePigeon.fromList((ArrayList) obj2);
            }
            eCommerceProductPigeon.setOriginalPrice(eCommercePricePigeon);
            eCommerceProductPigeon.setPromocodes((List) arrayList.get(6));
            return eCommerceProductPigeon;
        }

        public ECommercePricePigeon getActualPrice() {
            return this.actualPrice;
        }

        public List<String> getCategoriesPath() {
            return this.categoriesPath;
        }

        public String getName() {
            return this.name;
        }

        public ECommercePricePigeon getOriginalPrice() {
            return this.originalPrice;
        }

        public Map<String, String> getPayload() {
            return this.payload;
        }

        public List<String> getPromocodes() {
            return this.promocodes;
        }

        public String getSku() {
            return this.sku;
        }

        public void setActualPrice(ECommercePricePigeon eCommercePricePigeon) {
            this.actualPrice = eCommercePricePigeon;
        }

        public void setCategoriesPath(List<String> list) {
            this.categoriesPath = list;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setOriginalPrice(ECommercePricePigeon eCommercePricePigeon) {
            this.originalPrice = eCommercePricePigeon;
        }

        public void setPayload(Map<String, String> map) {
            this.payload = map;
        }

        public void setPromocodes(List<String> list) {
            this.promocodes = list;
        }

        public void setSku(String str) {
            if (str != null) {
                this.sku = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"sku\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> arrayList = new ArrayList<>(7);
            arrayList.add(this.sku);
            arrayList.add(this.name);
            arrayList.add(this.categoriesPath);
            arrayList.add(this.payload);
            ECommercePricePigeon eCommercePricePigeon = this.actualPrice;
            ArrayList<Object> arrayList2 = null;
            if (eCommercePricePigeon == null) {
                list = null;
            } else {
                list = eCommercePricePigeon.toList();
            }
            arrayList.add(list);
            ECommercePricePigeon eCommercePricePigeon2 = this.originalPrice;
            if (eCommercePricePigeon2 != null) {
                arrayList2 = eCommercePricePigeon2.toList();
            }
            arrayList.add(arrayList2);
            arrayList.add(this.promocodes);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ECommerceReferrerPigeon {
        private String identifier;
        private ECommerceScreenPigeon screen;
        private String type;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String identifier;
            private ECommerceScreenPigeon screen;
            private String type;

            public ECommerceReferrerPigeon build() {
                ECommerceReferrerPigeon eCommerceReferrerPigeon = new ECommerceReferrerPigeon();
                eCommerceReferrerPigeon.setType(this.type);
                eCommerceReferrerPigeon.setIdentifier(this.identifier);
                eCommerceReferrerPigeon.setScreen(this.screen);
                return eCommerceReferrerPigeon;
            }

            public Builder setIdentifier(String str) {
                this.identifier = str;
                return this;
            }

            public Builder setScreen(ECommerceScreenPigeon eCommerceScreenPigeon) {
                this.screen = eCommerceScreenPigeon;
                return this;
            }

            public Builder setType(String str) {
                this.type = str;
                return this;
            }
        }

        static ECommerceReferrerPigeon fromList(ArrayList<Object> arrayList) {
            ECommerceScreenPigeon fromList;
            ECommerceReferrerPigeon eCommerceReferrerPigeon = new ECommerceReferrerPigeon();
            eCommerceReferrerPigeon.setType((String) arrayList.get(0));
            eCommerceReferrerPigeon.setIdentifier((String) arrayList.get(1));
            Object obj = arrayList.get(2);
            if (obj == null) {
                fromList = null;
            } else {
                fromList = ECommerceScreenPigeon.fromList((ArrayList) obj);
            }
            eCommerceReferrerPigeon.setScreen(fromList);
            return eCommerceReferrerPigeon;
        }

        public String getIdentifier() {
            return this.identifier;
        }

        public ECommerceScreenPigeon getScreen() {
            return this.screen;
        }

        public String getType() {
            return this.type;
        }

        public void setIdentifier(String str) {
            this.identifier = str;
        }

        public void setScreen(ECommerceScreenPigeon eCommerceScreenPigeon) {
            this.screen = eCommerceScreenPigeon;
        }

        public void setType(String str) {
            this.type = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.type);
            arrayList.add(this.identifier);
            ECommerceScreenPigeon eCommerceScreenPigeon = this.screen;
            if (eCommerceScreenPigeon == null) {
                list = null;
            } else {
                list = eCommerceScreenPigeon.toList();
            }
            arrayList.add(list);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ECommerceScreenPigeon {
        private List<String> categoriesPath;
        private String name;
        private Map<String, String> payload;
        private String searchQuery;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private List<String> categoriesPath;
            private String name;
            private Map<String, String> payload;
            private String searchQuery;

            public ECommerceScreenPigeon build() {
                ECommerceScreenPigeon eCommerceScreenPigeon = new ECommerceScreenPigeon();
                eCommerceScreenPigeon.setName(this.name);
                eCommerceScreenPigeon.setCategoriesPath(this.categoriesPath);
                eCommerceScreenPigeon.setSearchQuery(this.searchQuery);
                eCommerceScreenPigeon.setPayload(this.payload);
                return eCommerceScreenPigeon;
            }

            public Builder setCategoriesPath(List<String> list) {
                this.categoriesPath = list;
                return this;
            }

            public Builder setName(String str) {
                this.name = str;
                return this;
            }

            public Builder setPayload(Map<String, String> map) {
                this.payload = map;
                return this;
            }

            public Builder setSearchQuery(String str) {
                this.searchQuery = str;
                return this;
            }
        }

        static ECommerceScreenPigeon fromList(ArrayList<Object> arrayList) {
            ECommerceScreenPigeon eCommerceScreenPigeon = new ECommerceScreenPigeon();
            eCommerceScreenPigeon.setName((String) arrayList.get(0));
            eCommerceScreenPigeon.setCategoriesPath((List) arrayList.get(1));
            eCommerceScreenPigeon.setSearchQuery((String) arrayList.get(2));
            eCommerceScreenPigeon.setPayload((Map) arrayList.get(3));
            return eCommerceScreenPigeon;
        }

        public List<String> getCategoriesPath() {
            return this.categoriesPath;
        }

        public String getName() {
            return this.name;
        }

        public Map<String, String> getPayload() {
            return this.payload;
        }

        public String getSearchQuery() {
            return this.searchQuery;
        }

        public void setCategoriesPath(List<String> list) {
            this.categoriesPath = list;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPayload(Map<String, String> map) {
            this.payload = map;
        }

        public void setSearchQuery(String str) {
            this.searchQuery = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(4);
            arrayList.add(this.name);
            arrayList.add(this.categoriesPath);
            arrayList.add(this.searchQuery);
            arrayList.add(this.payload);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ErrorDetailsPigeon {
        private List<StackTraceElementPigeon> backtrace;
        private String dartVersion;
        private String exceptionClass;
        private String message;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private List<StackTraceElementPigeon> backtrace;
            private String dartVersion;
            private String exceptionClass;
            private String message;

            public ErrorDetailsPigeon build() {
                ErrorDetailsPigeon errorDetailsPigeon = new ErrorDetailsPigeon();
                errorDetailsPigeon.setExceptionClass(this.exceptionClass);
                errorDetailsPigeon.setMessage(this.message);
                errorDetailsPigeon.setDartVersion(this.dartVersion);
                errorDetailsPigeon.setBacktrace(this.backtrace);
                return errorDetailsPigeon;
            }

            public Builder setBacktrace(List<StackTraceElementPigeon> list) {
                this.backtrace = list;
                return this;
            }

            public Builder setDartVersion(String str) {
                this.dartVersion = str;
                return this;
            }

            public Builder setExceptionClass(String str) {
                this.exceptionClass = str;
                return this;
            }

            public Builder setMessage(String str) {
                this.message = str;
                return this;
            }
        }

        ErrorDetailsPigeon() {
        }

        static ErrorDetailsPigeon fromList(ArrayList<Object> arrayList) {
            ErrorDetailsPigeon errorDetailsPigeon = new ErrorDetailsPigeon();
            errorDetailsPigeon.setExceptionClass((String) arrayList.get(0));
            errorDetailsPigeon.setMessage((String) arrayList.get(1));
            errorDetailsPigeon.setDartVersion((String) arrayList.get(2));
            errorDetailsPigeon.setBacktrace((List) arrayList.get(3));
            return errorDetailsPigeon;
        }

        public List<StackTraceElementPigeon> getBacktrace() {
            return this.backtrace;
        }

        public String getDartVersion() {
            return this.dartVersion;
        }

        public String getExceptionClass() {
            return this.exceptionClass;
        }

        public String getMessage() {
            return this.message;
        }

        public void setBacktrace(List<StackTraceElementPigeon> list) {
            this.backtrace = list;
        }

        public void setDartVersion(String str) {
            if (str != null) {
                this.dartVersion = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"dartVersion\" is null.");
        }

        public void setExceptionClass(String str) {
            if (str != null) {
                this.exceptionClass = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"exceptionClass\" is null.");
        }

        public void setMessage(String str) {
            this.message = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(4);
            arrayList.add(this.exceptionClass);
            arrayList.add(this.message);
            arrayList.add(this.dartVersion);
            arrayList.add(this.backtrace);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ExternalAttributionPigeon {
        private Map<String, Object> data;
        private String source;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Map<String, Object> data;
            private String source;

            public ExternalAttributionPigeon build() {
                ExternalAttributionPigeon externalAttributionPigeon = new ExternalAttributionPigeon();
                externalAttributionPigeon.setSource(this.source);
                externalAttributionPigeon.setData(this.data);
                return externalAttributionPigeon;
            }

            public Builder setData(Map<String, Object> map) {
                this.data = map;
                return this;
            }

            public Builder setSource(String str) {
                this.source = str;
                return this;
            }
        }

        ExternalAttributionPigeon() {
        }

        static ExternalAttributionPigeon fromList(ArrayList<Object> arrayList) {
            ExternalAttributionPigeon externalAttributionPigeon = new ExternalAttributionPigeon();
            externalAttributionPigeon.setSource((String) arrayList.get(0));
            externalAttributionPigeon.setData((Map) arrayList.get(1));
            return externalAttributionPigeon;
        }

        public Map<String, Object> getData() {
            return this.data;
        }

        public String getSource() {
            return this.source;
        }

        public void setData(Map<String, Object> map) {
            if (map != null) {
                this.data = map;
                return;
            }
            throw new IllegalStateException("Nonnull field \"data\" is null.");
        }

        public void setSource(String str) {
            if (str != null) {
                this.source = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"source\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.source);
            arrayList.add(this.data);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static class FlutterError extends RuntimeException {
        public final String code;
        public final Object details;

        public FlutterError(String str, String str2, Object obj) {
            super(str2);
            this.code = str;
            this.details = obj;
        }
    }

    /* loaded from: classes2.dex */
    public enum GenderPigeon {
        MALE(0),
        FEMALE(1),
        OTHER(2),
        UNDEFINED(3);
        
        final int index;

        GenderPigeon(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public interface InitialDeepLinkHolderPigeon {
        static MessageCodec<Object> getCodec() {
            return new StandardMessageCodec();
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$0(InitialDeepLinkHolderPigeon initialDeepLinkHolderPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, initialDeepLinkHolderPigeon.getInitialDeeplink());
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        static void setup(BinaryMessenger binaryMessenger, final InitialDeepLinkHolderPigeon initialDeepLinkHolderPigeon) {
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.InitialDeepLinkHolderPigeon.getInitialDeeplink", getCodec());
            if (initialDeepLinkHolderPigeon != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.k0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.InitialDeepLinkHolderPigeon.lambda$setup$0(Pigeon.InitialDeepLinkHolderPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
        }

        String getInitialDeeplink();
    }

    /* loaded from: classes2.dex */
    public static final class LocationPigeon {
        private Double accuracy;
        private Double altitude;
        private Double course;
        private Double latitude;
        private Double longitude;
        private String provider;
        private Double speed;
        private Long timestamp;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Double accuracy;
            private Double altitude;
            private Double course;
            private Double latitude;
            private Double longitude;
            private String provider;
            private Double speed;
            private Long timestamp;

            public LocationPigeon build() {
                LocationPigeon locationPigeon = new LocationPigeon();
                locationPigeon.setLatitude(this.latitude);
                locationPigeon.setLongitude(this.longitude);
                locationPigeon.setProvider(this.provider);
                locationPigeon.setAltitude(this.altitude);
                locationPigeon.setAccuracy(this.accuracy);
                locationPigeon.setCourse(this.course);
                locationPigeon.setSpeed(this.speed);
                locationPigeon.setTimestamp(this.timestamp);
                return locationPigeon;
            }

            public Builder setAccuracy(Double d10) {
                this.accuracy = d10;
                return this;
            }

            public Builder setAltitude(Double d10) {
                this.altitude = d10;
                return this;
            }

            public Builder setCourse(Double d10) {
                this.course = d10;
                return this;
            }

            public Builder setLatitude(Double d10) {
                this.latitude = d10;
                return this;
            }

            public Builder setLongitude(Double d10) {
                this.longitude = d10;
                return this;
            }

            public Builder setProvider(String str) {
                this.provider = str;
                return this;
            }

            public Builder setSpeed(Double d10) {
                this.speed = d10;
                return this;
            }

            public Builder setTimestamp(Long l10) {
                this.timestamp = l10;
                return this;
            }
        }

        LocationPigeon() {
        }

        static LocationPigeon fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            LocationPigeon locationPigeon = new LocationPigeon();
            locationPigeon.setLatitude((Double) arrayList.get(0));
            locationPigeon.setLongitude((Double) arrayList.get(1));
            locationPigeon.setProvider((String) arrayList.get(2));
            locationPigeon.setAltitude((Double) arrayList.get(3));
            locationPigeon.setAccuracy((Double) arrayList.get(4));
            locationPigeon.setCourse((Double) arrayList.get(5));
            locationPigeon.setSpeed((Double) arrayList.get(6));
            Object obj = arrayList.get(7);
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            locationPigeon.setTimestamp(valueOf);
            return locationPigeon;
        }

        public Double getAccuracy() {
            return this.accuracy;
        }

        public Double getAltitude() {
            return this.altitude;
        }

        public Double getCourse() {
            return this.course;
        }

        public Double getLatitude() {
            return this.latitude;
        }

        public Double getLongitude() {
            return this.longitude;
        }

        public String getProvider() {
            return this.provider;
        }

        public Double getSpeed() {
            return this.speed;
        }

        public Long getTimestamp() {
            return this.timestamp;
        }

        public void setAccuracy(Double d10) {
            this.accuracy = d10;
        }

        public void setAltitude(Double d10) {
            this.altitude = d10;
        }

        public void setCourse(Double d10) {
            this.course = d10;
        }

        public void setLatitude(Double d10) {
            if (d10 != null) {
                this.latitude = d10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"latitude\" is null.");
        }

        public void setLongitude(Double d10) {
            if (d10 != null) {
                this.longitude = d10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"longitude\" is null.");
        }

        public void setProvider(String str) {
            this.provider = str;
        }

        public void setSpeed(Double d10) {
            this.speed = d10;
        }

        public void setTimestamp(Long l10) {
            this.timestamp = l10;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(8);
            arrayList.add(this.latitude);
            arrayList.add(this.longitude);
            arrayList.add(this.provider);
            arrayList.add(this.altitude);
            arrayList.add(this.accuracy);
            arrayList.add(this.course);
            arrayList.add(this.speed);
            arrayList.add(this.timestamp);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PreloadInfoPigeon {
        private Map<String, String> additionalInfo;
        private String trackingId;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Map<String, String> additionalInfo;
            private String trackingId;

            public PreloadInfoPigeon build() {
                PreloadInfoPigeon preloadInfoPigeon = new PreloadInfoPigeon();
                preloadInfoPigeon.setTrackingId(this.trackingId);
                preloadInfoPigeon.setAdditionalInfo(this.additionalInfo);
                return preloadInfoPigeon;
            }

            public Builder setAdditionalInfo(Map<String, String> map) {
                this.additionalInfo = map;
                return this;
            }

            public Builder setTrackingId(String str) {
                this.trackingId = str;
                return this;
            }
        }

        PreloadInfoPigeon() {
        }

        static PreloadInfoPigeon fromList(ArrayList<Object> arrayList) {
            PreloadInfoPigeon preloadInfoPigeon = new PreloadInfoPigeon();
            preloadInfoPigeon.setTrackingId((String) arrayList.get(0));
            preloadInfoPigeon.setAdditionalInfo((Map) arrayList.get(1));
            return preloadInfoPigeon;
        }

        public Map<String, String> getAdditionalInfo() {
            return this.additionalInfo;
        }

        public String getTrackingId() {
            return this.trackingId;
        }

        public void setAdditionalInfo(Map<String, String> map) {
            this.additionalInfo = map;
        }

        public void setTrackingId(String str) {
            if (str != null) {
                this.trackingId = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"trackingId\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.trackingId);
            arrayList.add(this.additionalInfo);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ReceiptPigeon {
        private String data;
        private String signature;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String data;
            private String signature;

            public ReceiptPigeon build() {
                ReceiptPigeon receiptPigeon = new ReceiptPigeon();
                receiptPigeon.setData(this.data);
                receiptPigeon.setSignature(this.signature);
                return receiptPigeon;
            }

            public Builder setData(String str) {
                this.data = str;
                return this;
            }

            public Builder setSignature(String str) {
                this.signature = str;
                return this;
            }
        }

        static ReceiptPigeon fromList(ArrayList<Object> arrayList) {
            ReceiptPigeon receiptPigeon = new ReceiptPigeon();
            receiptPigeon.setData((String) arrayList.get(0));
            receiptPigeon.setSignature((String) arrayList.get(1));
            return receiptPigeon;
        }

        public String getData() {
            return this.data;
        }

        public String getSignature() {
            return this.signature;
        }

        public void setData(String str) {
            this.data = str;
        }

        public void setSignature(String str) {
            this.signature = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.data);
            arrayList.add(this.signature);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ReporterConfigPigeon {
        private String apiKey;
        private Map<String, String> appEnvironment;
        private Boolean dataSendingEnabled;
        private Long dispatchPeriodSeconds;
        private Boolean logs;
        private Long maxReportsCount;
        private Long maxReportsInDatabaseCount;
        private Long sessionTimeout;
        private String userProfileID;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String apiKey;
            private Map<String, String> appEnvironment;
            private Boolean dataSendingEnabled;
            private Long dispatchPeriodSeconds;
            private Boolean logs;
            private Long maxReportsCount;
            private Long maxReportsInDatabaseCount;
            private Long sessionTimeout;
            private String userProfileID;

            public ReporterConfigPigeon build() {
                ReporterConfigPigeon reporterConfigPigeon = new ReporterConfigPigeon();
                reporterConfigPigeon.setApiKey(this.apiKey);
                reporterConfigPigeon.setAppEnvironment(this.appEnvironment);
                reporterConfigPigeon.setDataSendingEnabled(this.dataSendingEnabled);
                reporterConfigPigeon.setDispatchPeriodSeconds(this.dispatchPeriodSeconds);
                reporterConfigPigeon.setLogs(this.logs);
                reporterConfigPigeon.setMaxReportsCount(this.maxReportsCount);
                reporterConfigPigeon.setMaxReportsInDatabaseCount(this.maxReportsInDatabaseCount);
                reporterConfigPigeon.setSessionTimeout(this.sessionTimeout);
                reporterConfigPigeon.setUserProfileID(this.userProfileID);
                return reporterConfigPigeon;
            }

            public Builder setApiKey(String str) {
                this.apiKey = str;
                return this;
            }

            public Builder setAppEnvironment(Map<String, String> map) {
                this.appEnvironment = map;
                return this;
            }

            public Builder setDataSendingEnabled(Boolean bool) {
                this.dataSendingEnabled = bool;
                return this;
            }

            public Builder setDispatchPeriodSeconds(Long l10) {
                this.dispatchPeriodSeconds = l10;
                return this;
            }

            public Builder setLogs(Boolean bool) {
                this.logs = bool;
                return this;
            }

            public Builder setMaxReportsCount(Long l10) {
                this.maxReportsCount = l10;
                return this;
            }

            public Builder setMaxReportsInDatabaseCount(Long l10) {
                this.maxReportsInDatabaseCount = l10;
                return this;
            }

            public Builder setSessionTimeout(Long l10) {
                this.sessionTimeout = l10;
                return this;
            }

            public Builder setUserProfileID(String str) {
                this.userProfileID = str;
                return this;
            }
        }

        ReporterConfigPigeon() {
        }

        static ReporterConfigPigeon fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            long longValue2;
            Long valueOf2;
            long longValue3;
            Long valueOf3;
            long longValue4;
            ReporterConfigPigeon reporterConfigPigeon = new ReporterConfigPigeon();
            reporterConfigPigeon.setApiKey((String) arrayList.get(0));
            reporterConfigPigeon.setAppEnvironment((Map) arrayList.get(1));
            reporterConfigPigeon.setDataSendingEnabled((Boolean) arrayList.get(2));
            Object obj = arrayList.get(3);
            Long l10 = null;
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            reporterConfigPigeon.setDispatchPeriodSeconds(valueOf);
            reporterConfigPigeon.setLogs((Boolean) arrayList.get(4));
            Object obj2 = arrayList.get(5);
            if (obj2 == null) {
                valueOf2 = null;
            } else {
                if (obj2 instanceof Integer) {
                    longValue2 = ((Integer) obj2).intValue();
                } else {
                    longValue2 = ((Long) obj2).longValue();
                }
                valueOf2 = Long.valueOf(longValue2);
            }
            reporterConfigPigeon.setMaxReportsCount(valueOf2);
            Object obj3 = arrayList.get(6);
            if (obj3 == null) {
                valueOf3 = null;
            } else {
                if (obj3 instanceof Integer) {
                    longValue3 = ((Integer) obj3).intValue();
                } else {
                    longValue3 = ((Long) obj3).longValue();
                }
                valueOf3 = Long.valueOf(longValue3);
            }
            reporterConfigPigeon.setMaxReportsInDatabaseCount(valueOf3);
            Object obj4 = arrayList.get(7);
            if (obj4 != null) {
                if (obj4 instanceof Integer) {
                    longValue4 = ((Integer) obj4).intValue();
                } else {
                    longValue4 = ((Long) obj4).longValue();
                }
                l10 = Long.valueOf(longValue4);
            }
            reporterConfigPigeon.setSessionTimeout(l10);
            reporterConfigPigeon.setUserProfileID((String) arrayList.get(8));
            return reporterConfigPigeon;
        }

        public String getApiKey() {
            return this.apiKey;
        }

        public Map<String, String> getAppEnvironment() {
            return this.appEnvironment;
        }

        public Boolean getDataSendingEnabled() {
            return this.dataSendingEnabled;
        }

        public Long getDispatchPeriodSeconds() {
            return this.dispatchPeriodSeconds;
        }

        public Boolean getLogs() {
            return this.logs;
        }

        public Long getMaxReportsCount() {
            return this.maxReportsCount;
        }

        public Long getMaxReportsInDatabaseCount() {
            return this.maxReportsInDatabaseCount;
        }

        public Long getSessionTimeout() {
            return this.sessionTimeout;
        }

        public String getUserProfileID() {
            return this.userProfileID;
        }

        public void setApiKey(String str) {
            if (str != null) {
                this.apiKey = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"apiKey\" is null.");
        }

        public void setAppEnvironment(Map<String, String> map) {
            this.appEnvironment = map;
        }

        public void setDataSendingEnabled(Boolean bool) {
            this.dataSendingEnabled = bool;
        }

        public void setDispatchPeriodSeconds(Long l10) {
            this.dispatchPeriodSeconds = l10;
        }

        public void setLogs(Boolean bool) {
            this.logs = bool;
        }

        public void setMaxReportsCount(Long l10) {
            this.maxReportsCount = l10;
        }

        public void setMaxReportsInDatabaseCount(Long l10) {
            this.maxReportsInDatabaseCount = l10;
        }

        public void setSessionTimeout(Long l10) {
            this.sessionTimeout = l10;
        }

        public void setUserProfileID(String str) {
            this.userProfileID = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(9);
            arrayList.add(this.apiKey);
            arrayList.add(this.appEnvironment);
            arrayList.add(this.dataSendingEnabled);
            arrayList.add(this.dispatchPeriodSeconds);
            arrayList.add(this.logs);
            arrayList.add(this.maxReportsCount);
            arrayList.add(this.maxReportsInDatabaseCount);
            arrayList.add(this.sessionTimeout);
            arrayList.add(this.userProfileID);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public interface ReporterPigeon {
        static MessageCodec<Object> getCodec() {
            return ReporterPigeonCodec.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$0(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                reporterPigeon.clearAppEnvironment((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$1(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                reporterPigeon.pauseSession((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$10(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportUnhandledException((String) arrayList2.get(0), (ErrorDetailsPigeon) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$11(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportUserProfile((String) arrayList2.get(0), (UserProfilePigeon) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$12(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                reporterPigeon.resumeSession((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$13(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                reporterPigeon.sendEventsBuffer((String) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$14(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.setDataSendingEnabled((String) arrayList2.get(0), (Boolean) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$15(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.setUserProfileID((String) arrayList2.get(0), (String) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$2(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.putAppEnvironmentValue((String) arrayList2.get(0), (String) arrayList2.get(1), (String) arrayList2.get(2));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$3(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportAdRevenue((String) arrayList2.get(0), (AdRevenuePigeon) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$4(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportECommerce((String) arrayList2.get(0), (ECommerceEventPigeon) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$5(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportError((String) arrayList2.get(0), (ErrorDetailsPigeon) arrayList2.get(1), (String) arrayList2.get(2));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$6(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportErrorWithGroup((String) arrayList2.get(0), (String) arrayList2.get(1), (ErrorDetailsPigeon) arrayList2.get(2), (String) arrayList2.get(3));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$7(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportEvent((String) arrayList2.get(0), (String) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$8(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportEventWithJson((String) arrayList2.get(0), (String) arrayList2.get(1), (String) arrayList2.get(2));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$9(ReporterPigeon reporterPigeon, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList arrayList2 = (ArrayList) obj;
            try {
                reporterPigeon.reportRevenue((String) arrayList2.get(0), (RevenuePigeon) arrayList2.get(1));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Pigeon.wrapError(th);
            }
            reply.reply(arrayList);
        }

        static void setup(BinaryMessenger binaryMessenger, final ReporterPigeon reporterPigeon) {
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.clearAppEnvironment", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.l0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$0(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.pauseSession", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.y0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$1(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.putAppEnvironmentValue", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.z0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$2(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportAdRevenue", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.a1
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$3(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportECommerce", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.m0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$4(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportError", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.n0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$5(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportErrorWithGroup", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.o0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$6(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportEvent", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.p0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$7(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportEventWithJson", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.q0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$8(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportRevenue", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.r0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$9(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel10.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportUnhandledException", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.s0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$10(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel11.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.reportUserProfile", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.t0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$11(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel12.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.resumeSession", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.u0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$12(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel13.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.sendEventsBuffer", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.v0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$13(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel14.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel15 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.setDataSendingEnabled", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel15.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.w0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$14(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel15.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel16 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.appmetrica_plugin.ReporterPigeon.setUserProfileID", getCodec());
            if (reporterPigeon != null) {
                basicMessageChannel16.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.appmetrica.analytics.flutter.pigeon.x0
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Pigeon.ReporterPigeon.lambda$setup$15(Pigeon.ReporterPigeon.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel16.setMessageHandler(null);
            }
        }

        void clearAppEnvironment(String str);

        void pauseSession(String str);

        void putAppEnvironmentValue(String str, String str2, String str3);

        void reportAdRevenue(String str, AdRevenuePigeon adRevenuePigeon);

        void reportECommerce(String str, ECommerceEventPigeon eCommerceEventPigeon);

        void reportError(String str, ErrorDetailsPigeon errorDetailsPigeon, String str2);

        void reportErrorWithGroup(String str, String str2, ErrorDetailsPigeon errorDetailsPigeon, String str3);

        void reportEvent(String str, String str2);

        void reportEventWithJson(String str, String str2, String str3);

        void reportRevenue(String str, RevenuePigeon revenuePigeon);

        void reportUnhandledException(String str, ErrorDetailsPigeon errorDetailsPigeon);

        void reportUserProfile(String str, UserProfilePigeon userProfilePigeon);

        void resumeSession(String str);

        void sendEventsBuffer(String str);

        void setDataSendingEnabled(String str, Boolean bool);

        void setUserProfileID(String str, String str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ReporterPigeonCodec extends StandardMessageCodec {
        public static final ReporterPigeonCodec INSTANCE = new ReporterPigeonCodec();

        private ReporterPigeonCodec() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b10, ByteBuffer byteBuffer) {
            switch (b10) {
                case Byte.MIN_VALUE:
                    return AdRevenuePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -127:
                    return ECommerceAmountPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -126:
                    return ECommerceAmountPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -125:
                    return ECommerceCartItemPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -124:
                    return ECommerceEventPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -123:
                    return ECommerceOrderPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -122:
                    return ECommercePricePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -121:
                    return ECommercePricePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -120:
                    return ECommerceProductPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -119:
                    return ECommerceProductPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -118:
                    return ECommerceReferrerPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -117:
                    return ECommerceScreenPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -116:
                    return ErrorDetailsPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -115:
                    return ErrorDetailsPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -114:
                    return ReceiptPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -113:
                    return RevenuePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -112:
                    return StackTraceElementPigeon.fromList((ArrayList) readValue(byteBuffer));
                case -111:
                    return UserProfileAttributePigeon.fromList((ArrayList) readValue(byteBuffer));
                case -110:
                    return UserProfilePigeon.fromList((ArrayList) readValue(byteBuffer));
                default:
                    return super.readValueOfType(b10, byteBuffer);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            if (obj instanceof AdRevenuePigeon) {
                byteArrayOutputStream.write(128);
                writeValue(byteArrayOutputStream, ((AdRevenuePigeon) obj).toList());
                return;
            }
            boolean z10 = obj instanceof ECommerceAmountPigeon;
            if (z10) {
                byteArrayOutputStream.write(129);
                writeValue(byteArrayOutputStream, ((ECommerceAmountPigeon) obj).toList());
            } else if (z10) {
                byteArrayOutputStream.write(130);
                writeValue(byteArrayOutputStream, ((ECommerceAmountPigeon) obj).toList());
            } else if (obj instanceof ECommerceCartItemPigeon) {
                byteArrayOutputStream.write(131);
                writeValue(byteArrayOutputStream, ((ECommerceCartItemPigeon) obj).toList());
            } else if (obj instanceof ECommerceEventPigeon) {
                byteArrayOutputStream.write(132);
                writeValue(byteArrayOutputStream, ((ECommerceEventPigeon) obj).toList());
            } else if (obj instanceof ECommerceOrderPigeon) {
                byteArrayOutputStream.write(133);
                writeValue(byteArrayOutputStream, ((ECommerceOrderPigeon) obj).toList());
            } else {
                boolean z11 = obj instanceof ECommercePricePigeon;
                if (z11) {
                    byteArrayOutputStream.write(134);
                    writeValue(byteArrayOutputStream, ((ECommercePricePigeon) obj).toList());
                } else if (z11) {
                    byteArrayOutputStream.write(135);
                    writeValue(byteArrayOutputStream, ((ECommercePricePigeon) obj).toList());
                } else {
                    boolean z12 = obj instanceof ECommerceProductPigeon;
                    if (z12) {
                        byteArrayOutputStream.write(136);
                        writeValue(byteArrayOutputStream, ((ECommerceProductPigeon) obj).toList());
                    } else if (z12) {
                        byteArrayOutputStream.write(137);
                        writeValue(byteArrayOutputStream, ((ECommerceProductPigeon) obj).toList());
                    } else if (obj instanceof ECommerceReferrerPigeon) {
                        byteArrayOutputStream.write(138);
                        writeValue(byteArrayOutputStream, ((ECommerceReferrerPigeon) obj).toList());
                    } else if (obj instanceof ECommerceScreenPigeon) {
                        byteArrayOutputStream.write(139);
                        writeValue(byteArrayOutputStream, ((ECommerceScreenPigeon) obj).toList());
                    } else {
                        boolean z13 = obj instanceof ErrorDetailsPigeon;
                        if (z13) {
                            byteArrayOutputStream.write(140);
                            writeValue(byteArrayOutputStream, ((ErrorDetailsPigeon) obj).toList());
                        } else if (z13) {
                            byteArrayOutputStream.write(141);
                            writeValue(byteArrayOutputStream, ((ErrorDetailsPigeon) obj).toList());
                        } else if (obj instanceof ReceiptPigeon) {
                            byteArrayOutputStream.write(142);
                            writeValue(byteArrayOutputStream, ((ReceiptPigeon) obj).toList());
                        } else if (obj instanceof RevenuePigeon) {
                            byteArrayOutputStream.write(143);
                            writeValue(byteArrayOutputStream, ((RevenuePigeon) obj).toList());
                        } else if (obj instanceof StackTraceElementPigeon) {
                            byteArrayOutputStream.write(144);
                            writeValue(byteArrayOutputStream, ((StackTraceElementPigeon) obj).toList());
                        } else if (obj instanceof UserProfileAttributePigeon) {
                            byteArrayOutputStream.write(145);
                            writeValue(byteArrayOutputStream, ((UserProfileAttributePigeon) obj).toList());
                        } else if (obj instanceof UserProfilePigeon) {
                            byteArrayOutputStream.write(146);
                            writeValue(byteArrayOutputStream, ((UserProfilePigeon) obj).toList());
                        } else {
                            super.writeValue(byteArrayOutputStream, obj);
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface Result<T> {
        void error(Throwable th);

        void success(T t10);
    }

    /* loaded from: classes2.dex */
    public static final class RevenuePigeon {
        private String currency;
        private String payload;
        private String price;
        private String productId;
        private Long quantity;
        private ReceiptPigeon receipt;
        private String transactionId;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String currency;
            private String payload;
            private String price;
            private String productId;
            private Long quantity;
            private ReceiptPigeon receipt;
            private String transactionId;

            public RevenuePigeon build() {
                RevenuePigeon revenuePigeon = new RevenuePigeon();
                revenuePigeon.setPrice(this.price);
                revenuePigeon.setCurrency(this.currency);
                revenuePigeon.setQuantity(this.quantity);
                revenuePigeon.setProductId(this.productId);
                revenuePigeon.setPayload(this.payload);
                revenuePigeon.setReceipt(this.receipt);
                revenuePigeon.setTransactionId(this.transactionId);
                return revenuePigeon;
            }

            public Builder setCurrency(String str) {
                this.currency = str;
                return this;
            }

            public Builder setPayload(String str) {
                this.payload = str;
                return this;
            }

            public Builder setPrice(String str) {
                this.price = str;
                return this;
            }

            public Builder setProductId(String str) {
                this.productId = str;
                return this;
            }

            public Builder setQuantity(Long l10) {
                this.quantity = l10;
                return this;
            }

            public Builder setReceipt(ReceiptPigeon receiptPigeon) {
                this.receipt = receiptPigeon;
                return this;
            }

            public Builder setTransactionId(String str) {
                this.transactionId = str;
                return this;
            }
        }

        RevenuePigeon() {
        }

        static RevenuePigeon fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            RevenuePigeon revenuePigeon = new RevenuePigeon();
            revenuePigeon.setPrice((String) arrayList.get(0));
            revenuePigeon.setCurrency((String) arrayList.get(1));
            Object obj = arrayList.get(2);
            ReceiptPigeon receiptPigeon = null;
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            revenuePigeon.setQuantity(valueOf);
            revenuePigeon.setProductId((String) arrayList.get(3));
            revenuePigeon.setPayload((String) arrayList.get(4));
            Object obj2 = arrayList.get(5);
            if (obj2 != null) {
                receiptPigeon = ReceiptPigeon.fromList((ArrayList) obj2);
            }
            revenuePigeon.setReceipt(receiptPigeon);
            revenuePigeon.setTransactionId((String) arrayList.get(6));
            return revenuePigeon;
        }

        public String getCurrency() {
            return this.currency;
        }

        public String getPayload() {
            return this.payload;
        }

        public String getPrice() {
            return this.price;
        }

        public String getProductId() {
            return this.productId;
        }

        public Long getQuantity() {
            return this.quantity;
        }

        public ReceiptPigeon getReceipt() {
            return this.receipt;
        }

        public String getTransactionId() {
            return this.transactionId;
        }

        public void setCurrency(String str) {
            if (str != null) {
                this.currency = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"currency\" is null.");
        }

        public void setPayload(String str) {
            this.payload = str;
        }

        public void setPrice(String str) {
            if (str != null) {
                this.price = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"price\" is null.");
        }

        public void setProductId(String str) {
            this.productId = str;
        }

        public void setQuantity(Long l10) {
            this.quantity = l10;
        }

        public void setReceipt(ReceiptPigeon receiptPigeon) {
            this.receipt = receiptPigeon;
        }

        public void setTransactionId(String str) {
            this.transactionId = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> arrayList = new ArrayList<>(7);
            arrayList.add(this.price);
            arrayList.add(this.currency);
            arrayList.add(this.quantity);
            arrayList.add(this.productId);
            arrayList.add(this.payload);
            ReceiptPigeon receiptPigeon = this.receipt;
            if (receiptPigeon == null) {
                list = null;
            } else {
                list = receiptPigeon.toList();
            }
            arrayList.add(list);
            arrayList.add(this.transactionId);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class StackTraceElementPigeon {
        private String className;
        private Long column;
        private String fileName;
        private Long line;
        private String methodName;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String className;
            private Long column;
            private String fileName;
            private Long line;
            private String methodName;

            public StackTraceElementPigeon build() {
                StackTraceElementPigeon stackTraceElementPigeon = new StackTraceElementPigeon();
                stackTraceElementPigeon.setClassName(this.className);
                stackTraceElementPigeon.setFileName(this.fileName);
                stackTraceElementPigeon.setLine(this.line);
                stackTraceElementPigeon.setColumn(this.column);
                stackTraceElementPigeon.setMethodName(this.methodName);
                return stackTraceElementPigeon;
            }

            public Builder setClassName(String str) {
                this.className = str;
                return this;
            }

            public Builder setColumn(Long l10) {
                this.column = l10;
                return this;
            }

            public Builder setFileName(String str) {
                this.fileName = str;
                return this;
            }

            public Builder setLine(Long l10) {
                this.line = l10;
                return this;
            }

            public Builder setMethodName(String str) {
                this.methodName = str;
                return this;
            }
        }

        StackTraceElementPigeon() {
        }

        static StackTraceElementPigeon fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            long longValue2;
            StackTraceElementPigeon stackTraceElementPigeon = new StackTraceElementPigeon();
            stackTraceElementPigeon.setClassName((String) arrayList.get(0));
            stackTraceElementPigeon.setFileName((String) arrayList.get(1));
            Object obj = arrayList.get(2);
            Long l10 = null;
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            stackTraceElementPigeon.setLine(valueOf);
            Object obj2 = arrayList.get(3);
            if (obj2 != null) {
                if (obj2 instanceof Integer) {
                    longValue2 = ((Integer) obj2).intValue();
                } else {
                    longValue2 = ((Long) obj2).longValue();
                }
                l10 = Long.valueOf(longValue2);
            }
            stackTraceElementPigeon.setColumn(l10);
            stackTraceElementPigeon.setMethodName((String) arrayList.get(4));
            return stackTraceElementPigeon;
        }

        public String getClassName() {
            return this.className;
        }

        public Long getColumn() {
            return this.column;
        }

        public String getFileName() {
            return this.fileName;
        }

        public Long getLine() {
            return this.line;
        }

        public String getMethodName() {
            return this.methodName;
        }

        public void setClassName(String str) {
            if (str != null) {
                this.className = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"className\" is null.");
        }

        public void setColumn(Long l10) {
            if (l10 != null) {
                this.column = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"column\" is null.");
        }

        public void setFileName(String str) {
            this.fileName = str;
        }

        public void setLine(Long l10) {
            if (l10 != null) {
                this.line = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"line\" is null.");
        }

        public void setMethodName(String str) {
            if (str != null) {
                this.methodName = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"methodName\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(5);
            arrayList.add(this.className);
            arrayList.add(this.fileName);
            arrayList.add(this.line);
            arrayList.add(this.column);
            arrayList.add(this.methodName);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class StartupParamsItemPigeon {
        private String errorDetails;

        /* renamed from: id  reason: collision with root package name */
        private String f17826id;
        private StartupParamsItemStatusPigeon status;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String errorDetails;

            /* renamed from: id  reason: collision with root package name */
            private String f17827id;
            private StartupParamsItemStatusPigeon status;

            public StartupParamsItemPigeon build() {
                StartupParamsItemPigeon startupParamsItemPigeon = new StartupParamsItemPigeon();
                startupParamsItemPigeon.setId(this.f17827id);
                startupParamsItemPigeon.setStatus(this.status);
                startupParamsItemPigeon.setErrorDetails(this.errorDetails);
                return startupParamsItemPigeon;
            }

            public Builder setErrorDetails(String str) {
                this.errorDetails = str;
                return this;
            }

            public Builder setId(String str) {
                this.f17827id = str;
                return this;
            }

            public Builder setStatus(StartupParamsItemStatusPigeon startupParamsItemStatusPigeon) {
                this.status = startupParamsItemStatusPigeon;
                return this;
            }
        }

        StartupParamsItemPigeon() {
        }

        static StartupParamsItemPigeon fromList(ArrayList<Object> arrayList) {
            StartupParamsItemStatusPigeon startupParamsItemStatusPigeon;
            StartupParamsItemPigeon startupParamsItemPigeon = new StartupParamsItemPigeon();
            startupParamsItemPigeon.setId((String) arrayList.get(0));
            Object obj = arrayList.get(1);
            if (obj == null) {
                startupParamsItemStatusPigeon = null;
            } else {
                startupParamsItemStatusPigeon = StartupParamsItemStatusPigeon.values()[((Integer) obj).intValue()];
            }
            startupParamsItemPigeon.setStatus(startupParamsItemStatusPigeon);
            startupParamsItemPigeon.setErrorDetails((String) arrayList.get(2));
            return startupParamsItemPigeon;
        }

        public String getErrorDetails() {
            return this.errorDetails;
        }

        public String getId() {
            return this.f17826id;
        }

        public StartupParamsItemStatusPigeon getStatus() {
            return this.status;
        }

        public void setErrorDetails(String str) {
            this.errorDetails = str;
        }

        public void setId(String str) {
            this.f17826id = str;
        }

        public void setStatus(StartupParamsItemStatusPigeon startupParamsItemStatusPigeon) {
            if (startupParamsItemStatusPigeon != null) {
                this.status = startupParamsItemStatusPigeon;
                return;
            }
            throw new IllegalStateException("Nonnull field \"status\" is null.");
        }

        ArrayList<Object> toList() {
            Integer valueOf;
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.f17826id);
            StartupParamsItemStatusPigeon startupParamsItemStatusPigeon = this.status;
            if (startupParamsItemStatusPigeon == null) {
                valueOf = null;
            } else {
                valueOf = Integer.valueOf(startupParamsItemStatusPigeon.index);
            }
            arrayList.add(valueOf);
            arrayList.add(this.errorDetails);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public enum StartupParamsItemStatusPigeon {
        FEATURE_DISABLED(0),
        INVALID_VALUE_FROM_PROVIDER(1),
        NETWORK_ERROR(2),
        OK(3),
        PROVIDER_UNAVAILABLE(4),
        UNKNOWN_ERROR(5);
        
        final int index;

        StartupParamsItemStatusPigeon(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public static final class StartupParamsPigeon {
        private StartupParamsReasonPigeon reason;
        private StartupParamsResultPigeon result;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private StartupParamsReasonPigeon reason;
            private StartupParamsResultPigeon result;

            public StartupParamsPigeon build() {
                StartupParamsPigeon startupParamsPigeon = new StartupParamsPigeon();
                startupParamsPigeon.setResult(this.result);
                startupParamsPigeon.setReason(this.reason);
                return startupParamsPigeon;
            }

            public Builder setReason(StartupParamsReasonPigeon startupParamsReasonPigeon) {
                this.reason = startupParamsReasonPigeon;
                return this;
            }

            public Builder setResult(StartupParamsResultPigeon startupParamsResultPigeon) {
                this.result = startupParamsResultPigeon;
                return this;
            }
        }

        static StartupParamsPigeon fromList(ArrayList<Object> arrayList) {
            StartupParamsResultPigeon fromList;
            StartupParamsPigeon startupParamsPigeon = new StartupParamsPigeon();
            Object obj = arrayList.get(0);
            StartupParamsReasonPigeon startupParamsReasonPigeon = null;
            if (obj == null) {
                fromList = null;
            } else {
                fromList = StartupParamsResultPigeon.fromList((ArrayList) obj);
            }
            startupParamsPigeon.setResult(fromList);
            Object obj2 = arrayList.get(1);
            if (obj2 != null) {
                startupParamsReasonPigeon = StartupParamsReasonPigeon.fromList((ArrayList) obj2);
            }
            startupParamsPigeon.setReason(startupParamsReasonPigeon);
            return startupParamsPigeon;
        }

        public StartupParamsReasonPigeon getReason() {
            return this.reason;
        }

        public StartupParamsResultPigeon getResult() {
            return this.result;
        }

        public void setReason(StartupParamsReasonPigeon startupParamsReasonPigeon) {
            this.reason = startupParamsReasonPigeon;
        }

        public void setResult(StartupParamsResultPigeon startupParamsResultPigeon) {
            this.result = startupParamsResultPigeon;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> list;
            ArrayList<Object> arrayList = new ArrayList<>(2);
            StartupParamsResultPigeon startupParamsResultPigeon = this.result;
            ArrayList<Object> arrayList2 = null;
            if (startupParamsResultPigeon == null) {
                list = null;
            } else {
                list = startupParamsResultPigeon.toList();
            }
            arrayList.add(list);
            StartupParamsReasonPigeon startupParamsReasonPigeon = this.reason;
            if (startupParamsReasonPigeon != null) {
                arrayList2 = startupParamsReasonPigeon.toList();
            }
            arrayList.add(arrayList2);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class StartupParamsReasonPigeon {
        private String value;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String value;

            public StartupParamsReasonPigeon build() {
                StartupParamsReasonPigeon startupParamsReasonPigeon = new StartupParamsReasonPigeon();
                startupParamsReasonPigeon.setValue(this.value);
                return startupParamsReasonPigeon;
            }

            public Builder setValue(String str) {
                this.value = str;
                return this;
            }
        }

        StartupParamsReasonPigeon() {
        }

        static StartupParamsReasonPigeon fromList(ArrayList<Object> arrayList) {
            StartupParamsReasonPigeon startupParamsReasonPigeon = new StartupParamsReasonPigeon();
            startupParamsReasonPigeon.setValue((String) arrayList.get(0));
            return startupParamsReasonPigeon;
        }

        public String getValue() {
            return this.value;
        }

        public void setValue(String str) {
            if (str != null) {
                this.value = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"value\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class StartupParamsResultPigeon {
        private String deviceId;
        private String deviceIdHash;
        private Map<String, StartupParamsItemPigeon> parameters;
        private String uuid;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String deviceId;
            private String deviceIdHash;
            private Map<String, StartupParamsItemPigeon> parameters;
            private String uuid;

            public StartupParamsResultPigeon build() {
                StartupParamsResultPigeon startupParamsResultPigeon = new StartupParamsResultPigeon();
                startupParamsResultPigeon.setDeviceId(this.deviceId);
                startupParamsResultPigeon.setDeviceIdHash(this.deviceIdHash);
                startupParamsResultPigeon.setParameters(this.parameters);
                startupParamsResultPigeon.setUuid(this.uuid);
                return startupParamsResultPigeon;
            }

            public Builder setDeviceId(String str) {
                this.deviceId = str;
                return this;
            }

            public Builder setDeviceIdHash(String str) {
                this.deviceIdHash = str;
                return this;
            }

            public Builder setParameters(Map<String, StartupParamsItemPigeon> map) {
                this.parameters = map;
                return this;
            }

            public Builder setUuid(String str) {
                this.uuid = str;
                return this;
            }
        }

        static StartupParamsResultPigeon fromList(ArrayList<Object> arrayList) {
            StartupParamsResultPigeon startupParamsResultPigeon = new StartupParamsResultPigeon();
            startupParamsResultPigeon.setDeviceId((String) arrayList.get(0));
            startupParamsResultPigeon.setDeviceIdHash((String) arrayList.get(1));
            startupParamsResultPigeon.setParameters((Map) arrayList.get(2));
            startupParamsResultPigeon.setUuid((String) arrayList.get(3));
            return startupParamsResultPigeon;
        }

        public String getDeviceId() {
            return this.deviceId;
        }

        public String getDeviceIdHash() {
            return this.deviceIdHash;
        }

        public Map<String, StartupParamsItemPigeon> getParameters() {
            return this.parameters;
        }

        public String getUuid() {
            return this.uuid;
        }

        public void setDeviceId(String str) {
            this.deviceId = str;
        }

        public void setDeviceIdHash(String str) {
            this.deviceIdHash = str;
        }

        public void setParameters(Map<String, StartupParamsItemPigeon> map) {
            this.parameters = map;
        }

        public void setUuid(String str) {
            this.uuid = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(4);
            arrayList.add(this.deviceId);
            arrayList.add(this.deviceIdHash);
            arrayList.add(this.parameters);
            arrayList.add(this.uuid);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class UserProfileAttributePigeon {
        private Long age;
        private Boolean boolValue;
        private Long day;
        private Double doubleValue;
        private GenderPigeon genderValue;
        private Boolean ifUndefined;
        private String key;
        private Long month;
        private Boolean reset;
        private String stringValue;
        private UserProfileAttributeType type;
        private Long year;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Long age;
            private Boolean boolValue;
            private Long day;
            private Double doubleValue;
            private GenderPigeon genderValue;
            private Boolean ifUndefined;
            private String key;
            private Long month;
            private Boolean reset;
            private String stringValue;
            private UserProfileAttributeType type;
            private Long year;

            public UserProfileAttributePigeon build() {
                UserProfileAttributePigeon userProfileAttributePigeon = new UserProfileAttributePigeon();
                userProfileAttributePigeon.setKey(this.key);
                userProfileAttributePigeon.setDoubleValue(this.doubleValue);
                userProfileAttributePigeon.setStringValue(this.stringValue);
                userProfileAttributePigeon.setBoolValue(this.boolValue);
                userProfileAttributePigeon.setYear(this.year);
                userProfileAttributePigeon.setMonth(this.month);
                userProfileAttributePigeon.setDay(this.day);
                userProfileAttributePigeon.setAge(this.age);
                userProfileAttributePigeon.setGenderValue(this.genderValue);
                userProfileAttributePigeon.setIfUndefined(this.ifUndefined);
                userProfileAttributePigeon.setReset(this.reset);
                userProfileAttributePigeon.setType(this.type);
                return userProfileAttributePigeon;
            }

            public Builder setAge(Long l10) {
                this.age = l10;
                return this;
            }

            public Builder setBoolValue(Boolean bool) {
                this.boolValue = bool;
                return this;
            }

            public Builder setDay(Long l10) {
                this.day = l10;
                return this;
            }

            public Builder setDoubleValue(Double d10) {
                this.doubleValue = d10;
                return this;
            }

            public Builder setGenderValue(GenderPigeon genderPigeon) {
                this.genderValue = genderPigeon;
                return this;
            }

            public Builder setIfUndefined(Boolean bool) {
                this.ifUndefined = bool;
                return this;
            }

            public Builder setKey(String str) {
                this.key = str;
                return this;
            }

            public Builder setMonth(Long l10) {
                this.month = l10;
                return this;
            }

            public Builder setReset(Boolean bool) {
                this.reset = bool;
                return this;
            }

            public Builder setStringValue(String str) {
                this.stringValue = str;
                return this;
            }

            public Builder setType(UserProfileAttributeType userProfileAttributeType) {
                this.type = userProfileAttributeType;
                return this;
            }

            public Builder setYear(Long l10) {
                this.year = l10;
                return this;
            }
        }

        UserProfileAttributePigeon() {
        }

        static UserProfileAttributePigeon fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            long longValue2;
            Long valueOf2;
            long longValue3;
            Long valueOf3;
            long longValue4;
            Long valueOf4;
            GenderPigeon genderPigeon;
            UserProfileAttributePigeon userProfileAttributePigeon = new UserProfileAttributePigeon();
            userProfileAttributePigeon.setKey((String) arrayList.get(0));
            userProfileAttributePigeon.setDoubleValue((Double) arrayList.get(1));
            userProfileAttributePigeon.setStringValue((String) arrayList.get(2));
            userProfileAttributePigeon.setBoolValue((Boolean) arrayList.get(3));
            Object obj = arrayList.get(4);
            UserProfileAttributeType userProfileAttributeType = null;
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            userProfileAttributePigeon.setYear(valueOf);
            Object obj2 = arrayList.get(5);
            if (obj2 == null) {
                valueOf2 = null;
            } else {
                if (obj2 instanceof Integer) {
                    longValue2 = ((Integer) obj2).intValue();
                } else {
                    longValue2 = ((Long) obj2).longValue();
                }
                valueOf2 = Long.valueOf(longValue2);
            }
            userProfileAttributePigeon.setMonth(valueOf2);
            Object obj3 = arrayList.get(6);
            if (obj3 == null) {
                valueOf3 = null;
            } else {
                if (obj3 instanceof Integer) {
                    longValue3 = ((Integer) obj3).intValue();
                } else {
                    longValue3 = ((Long) obj3).longValue();
                }
                valueOf3 = Long.valueOf(longValue3);
            }
            userProfileAttributePigeon.setDay(valueOf3);
            Object obj4 = arrayList.get(7);
            if (obj4 == null) {
                valueOf4 = null;
            } else {
                if (obj4 instanceof Integer) {
                    longValue4 = ((Integer) obj4).intValue();
                } else {
                    longValue4 = ((Long) obj4).longValue();
                }
                valueOf4 = Long.valueOf(longValue4);
            }
            userProfileAttributePigeon.setAge(valueOf4);
            Object obj5 = arrayList.get(8);
            if (obj5 == null) {
                genderPigeon = null;
            } else {
                genderPigeon = GenderPigeon.values()[((Integer) obj5).intValue()];
            }
            userProfileAttributePigeon.setGenderValue(genderPigeon);
            userProfileAttributePigeon.setIfUndefined((Boolean) arrayList.get(9));
            userProfileAttributePigeon.setReset((Boolean) arrayList.get(10));
            Object obj6 = arrayList.get(11);
            if (obj6 != null) {
                userProfileAttributeType = UserProfileAttributeType.values()[((Integer) obj6).intValue()];
            }
            userProfileAttributePigeon.setType(userProfileAttributeType);
            return userProfileAttributePigeon;
        }

        public Long getAge() {
            return this.age;
        }

        public Boolean getBoolValue() {
            return this.boolValue;
        }

        public Long getDay() {
            return this.day;
        }

        public Double getDoubleValue() {
            return this.doubleValue;
        }

        public GenderPigeon getGenderValue() {
            return this.genderValue;
        }

        public Boolean getIfUndefined() {
            return this.ifUndefined;
        }

        public String getKey() {
            return this.key;
        }

        public Long getMonth() {
            return this.month;
        }

        public Boolean getReset() {
            return this.reset;
        }

        public String getStringValue() {
            return this.stringValue;
        }

        public UserProfileAttributeType getType() {
            return this.type;
        }

        public Long getYear() {
            return this.year;
        }

        public void setAge(Long l10) {
            this.age = l10;
        }

        public void setBoolValue(Boolean bool) {
            this.boolValue = bool;
        }

        public void setDay(Long l10) {
            this.day = l10;
        }

        public void setDoubleValue(Double d10) {
            this.doubleValue = d10;
        }

        public void setGenderValue(GenderPigeon genderPigeon) {
            this.genderValue = genderPigeon;
        }

        public void setIfUndefined(Boolean bool) {
            this.ifUndefined = bool;
        }

        public void setKey(String str) {
            if (str != null) {
                this.key = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"key\" is null.");
        }

        public void setMonth(Long l10) {
            this.month = l10;
        }

        public void setReset(Boolean bool) {
            this.reset = bool;
        }

        public void setStringValue(String str) {
            this.stringValue = str;
        }

        public void setType(UserProfileAttributeType userProfileAttributeType) {
            this.type = userProfileAttributeType;
        }

        public void setYear(Long l10) {
            this.year = l10;
        }

        ArrayList<Object> toList() {
            Integer valueOf;
            ArrayList<Object> arrayList = new ArrayList<>(12);
            arrayList.add(this.key);
            arrayList.add(this.doubleValue);
            arrayList.add(this.stringValue);
            arrayList.add(this.boolValue);
            arrayList.add(this.year);
            arrayList.add(this.month);
            arrayList.add(this.day);
            arrayList.add(this.age);
            GenderPigeon genderPigeon = this.genderValue;
            Integer num = null;
            if (genderPigeon == null) {
                valueOf = null;
            } else {
                valueOf = Integer.valueOf(genderPigeon.index);
            }
            arrayList.add(valueOf);
            arrayList.add(this.ifUndefined);
            arrayList.add(this.reset);
            UserProfileAttributeType userProfileAttributeType = this.type;
            if (userProfileAttributeType != null) {
                num = Integer.valueOf(userProfileAttributeType.index);
            }
            arrayList.add(num);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public enum UserProfileAttributeType {
        BIRTH_DATE(0),
        BOOLEAN(1),
        COUNTER(2),
        GENDER(3),
        NAME(4),
        NOTIFICATION_ENABLED(5),
        NUMBER(6),
        STRING(7);
        
        final int index;

        UserProfileAttributeType(int i10) {
            this.index = i10;
        }
    }

    /* loaded from: classes2.dex */
    public static final class UserProfilePigeon {
        private List<UserProfileAttributePigeon> attributes;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private List<UserProfileAttributePigeon> attributes;

            public UserProfilePigeon build() {
                UserProfilePigeon userProfilePigeon = new UserProfilePigeon();
                userProfilePigeon.setAttributes(this.attributes);
                return userProfilePigeon;
            }

            public Builder setAttributes(List<UserProfileAttributePigeon> list) {
                this.attributes = list;
                return this;
            }
        }

        UserProfilePigeon() {
        }

        static UserProfilePigeon fromList(ArrayList<Object> arrayList) {
            UserProfilePigeon userProfilePigeon = new UserProfilePigeon();
            userProfilePigeon.setAttributes((List) arrayList.get(0));
            return userProfilePigeon;
        }

        public List<UserProfileAttributePigeon> getAttributes() {
            return this.attributes;
        }

        public void setAttributes(List<UserProfileAttributePigeon> list) {
            if (list != null) {
                this.attributes = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"attributes\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.attributes);
            return arrayList;
        }
    }

    protected static ArrayList<Object> wrapError(Throwable th) {
        ArrayList<Object> arrayList = new ArrayList<>(3);
        if (th instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) th;
            arrayList.add(flutterError.code);
            arrayList.add(flutterError.getMessage());
            arrayList.add(flutterError.details);
        } else {
            arrayList.add(th.toString());
            arrayList.add(th.getClass().getSimpleName());
            arrayList.add("Cause: " + th.getCause() + ", Stacktrace: " + Log.getStackTraceString(th));
        }
        return arrayList;
    }
}
