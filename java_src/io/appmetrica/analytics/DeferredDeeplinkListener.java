package io.appmetrica.analytics;
/* loaded from: classes2.dex */
public interface DeferredDeeplinkListener {

    /* loaded from: classes2.dex */
    public enum Error {
        NOT_A_FIRST_LAUNCH("Deferred deeplink can be requested during first launch only."),
        PARSE_ERROR("Google Play referrer did not contain deferred deeplink."),
        NO_REFERRER("No referrer was found"),
        UNKNOWN("Unknown error");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f17501a;

        Error(String str) {
            this.f17501a = str;
        }

        public String getDescription() {
            return this.f17501a;
        }
    }

    void onDeeplinkLoaded(String str);

    void onError(Error error, String str);
}
