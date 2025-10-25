package io.appmetrica.analytics.networktasks.internal;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetId;
import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreapi.internal.model.SdkEnvironment;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
/* loaded from: classes2.dex */
public class BaseRequestConfig {

    /* renamed from: a  reason: collision with root package name */
    private String f21257a;

    /* renamed from: b  reason: collision with root package name */
    private SdkEnvironment f21258b;

    /* renamed from: c  reason: collision with root package name */
    private SdkIdentifiers f21259c;

    /* renamed from: d  reason: collision with root package name */
    private AppSetId f21260d;

    /* renamed from: e  reason: collision with root package name */
    private RetryPolicyConfig f21261e;

    /* loaded from: classes2.dex */
    public static abstract class BaseRequestArguments<I, O> implements ArgumentsMerger<I, O> {
    }

    /* loaded from: classes2.dex */
    public static abstract class ComponentLoader<T extends BaseRequestConfig, A extends BaseRequestArguments, D extends DataSource<A>> implements RequestConfigLoader<T, D> {

        /* renamed from: a  reason: collision with root package name */
        final Context f21262a;

        /* renamed from: b  reason: collision with root package name */
        final String f21263b;

        /* JADX INFO: Access modifiers changed from: protected */
        public ComponentLoader(Context context, String str) {
            this.f21262a = context;
            this.f21263b = str;
        }

        protected abstract T createBlankConfig();

        public Context getContext() {
            return this.f21262a;
        }

        public String getPackageName() {
            return this.f21263b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.RequestConfigLoader
        public /* bridge */ /* synthetic */ BaseRequestConfig load(Object obj) {
            return load((ComponentLoader<T, A, D>) ((DataSource) obj));
        }

        public T load(D d10) {
            T createBlankConfig = createBlankConfig();
            createBlankConfig.setSdkIdentifiers(d10.sdkIdentifiers);
            createBlankConfig.setSdkEnvironment(d10.sdkEnvironmentProvider.getSdkEnvironment());
            createBlankConfig.setAppSetId(d10.platformIdentifiers.getAppSetIdProvider().getAppSetId());
            createBlankConfig.setPackageName(this.f21263b);
            return createBlankConfig;
        }
    }

    /* loaded from: classes2.dex */
    public static class DataSource<A> {
        public final A componentArguments;
        public final PlatformIdentifiers platformIdentifiers;
        public final SdkEnvironmentProvider sdkEnvironmentProvider;
        public final SdkIdentifiers sdkIdentifiers;

        public DataSource(SdkIdentifiers sdkIdentifiers, SdkEnvironmentProvider sdkEnvironmentProvider, PlatformIdentifiers platformIdentifiers, A a10) {
            this.sdkIdentifiers = sdkIdentifiers;
            this.componentArguments = a10;
            this.sdkEnvironmentProvider = sdkEnvironmentProvider;
            this.platformIdentifiers = platformIdentifiers;
        }
    }

    /* loaded from: classes2.dex */
    public interface RequestConfigLoader<T extends BaseRequestConfig, D> {
        T load(D d10);
    }

    public String getAnalyticsSdkBuildNumber() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return "";
        }
        return sdkEnvironment.getSdkInfo().getSdkBuildNumber();
    }

    public String getAnalyticsSdkBuildType() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return "";
        }
        return sdkEnvironment.getSdkInfo().getSdkBuildType();
    }

    public String getAnalyticsSdkVersionName() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return "";
        }
        return sdkEnvironment.getSdkInfo().getSdkVersionName();
    }

    public String getAppBuildNumber() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return "";
        }
        return sdkEnvironment.getAppVersionInfo().getAppBuildNumber();
    }

    public String getAppFramework() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return "";
        }
        return sdkEnvironment.getAppFramework();
    }

    public String getAppPlatform() {
        return "android";
    }

    public synchronized String getAppSetId() {
        String str;
        AppSetId appSetId = this.f21260d;
        if (appSetId != null && appSetId.getId() != null) {
            str = this.f21260d.getId();
        }
        str = "";
        return str;
    }

    public synchronized String getAppSetIdScope() {
        String value;
        AppSetId appSetId = this.f21260d;
        if (appSetId == null) {
            value = "";
        } else {
            value = appSetId.getScope().getValue();
        }
        return value;
    }

    public String getAppVersion() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return "";
        }
        return sdkEnvironment.getAppVersionInfo().getAppVersionName();
    }

    public synchronized String getDeviceIDHash() {
        String str;
        str = "";
        SdkIdentifiers sdkIdentifiers = this.f21259c;
        if (sdkIdentifiers != null && sdkIdentifiers.getDeviceIdHash() != null) {
            str = this.f21259c.getDeviceIdHash();
        }
        return str;
    }

    public synchronized String getDeviceId() {
        String str;
        str = "";
        SdkIdentifiers sdkIdentifiers = this.f21259c;
        if (sdkIdentifiers != null && sdkIdentifiers.getDeviceId() != null) {
            str = this.f21259c.getDeviceId();
        }
        return str;
    }

    public String getDeviceRootStatus() {
        return ConstantDeviceInfo.DEVICE_ROOT_STATUS;
    }

    public String getDeviceType() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment != null) {
            return sdkEnvironment.getDeviceType();
        }
        return "phone";
    }

    public String getLocale() {
        String str;
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null || (str = (String) CollectionUtils.getFirstOrNull(sdkEnvironment.getLocales())) == null) {
            return "";
        }
        return str;
    }

    public String getManufacturer() {
        return (String) WrapUtils.getOrDefault(ConstantDeviceInfo.MANUFACTURER, "");
    }

    public String getModel() {
        return ConstantDeviceInfo.MODEL;
    }

    public int getOsApiLevel() {
        return ConstantDeviceInfo.OS_API_LEVEL;
    }

    public String getOsVersion() {
        return ConstantDeviceInfo.OS_VERSION;
    }

    public String getPackageName() {
        return this.f21257a;
    }

    public String getProtocolVersion() {
        return "2";
    }

    public RetryPolicyConfig getRetryPolicyConfig() {
        return this.f21261e;
    }

    public float getScaleFactor() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return 0.0f;
        }
        return sdkEnvironment.getScreenInfo().getScaleFactor();
    }

    public int getScreenDpi() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return 0;
        }
        return sdkEnvironment.getScreenInfo().getDpi();
    }

    public int getScreenHeight() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return 0;
        }
        return sdkEnvironment.getScreenInfo().getHeight();
    }

    public int getScreenWidth() {
        SdkEnvironment sdkEnvironment = this.f21258b;
        if (sdkEnvironment == null) {
            return 0;
        }
        return sdkEnvironment.getScreenInfo().getWidth();
    }

    public synchronized String getUuid() {
        String str;
        str = "";
        SdkIdentifiers sdkIdentifiers = this.f21259c;
        if (sdkIdentifiers != null && sdkIdentifiers.getUuid() != null) {
            str = this.f21259c.getUuid();
        }
        return str;
    }

    public synchronized boolean isIdentifiersValid() {
        boolean z10;
        String uuid;
        String deviceId;
        String deviceIdHash;
        SdkIdentifiers sdkIdentifiers = this.f21259c;
        if (sdkIdentifiers != null && (uuid = sdkIdentifiers.getUuid()) != null && uuid.length() != 0 && (deviceId = sdkIdentifiers.getDeviceId()) != null && deviceId.length() != 0 && (deviceIdHash = sdkIdentifiers.getDeviceIdHash()) != null) {
            if (deviceIdHash.length() != 0) {
                z10 = true;
            }
        }
        z10 = false;
        return z10;
    }

    protected void setAppSetId(AppSetId appSetId) {
        this.f21260d = appSetId;
    }

    protected void setPackageName(String str) {
        this.f21257a = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRetryPolicyConfig(RetryPolicyConfig retryPolicyConfig) {
        this.f21261e = retryPolicyConfig;
    }

    protected void setSdkEnvironment(SdkEnvironment sdkEnvironment) {
        this.f21258b = sdkEnvironment;
    }

    protected void setSdkIdentifiers(SdkIdentifiers sdkIdentifiers) {
        this.f21259c = sdkIdentifiers;
    }

    public String toString() {
        return "BaseRequestConfig{mPackageName='" + this.f21257a + "', sdkEnvironment=" + this.f21258b + ", mProtocolVersion='2', sdkIdentifiers=" + this.f21259c + ", retryPolicyConfig=" + this.f21261e + '}';
    }
}
