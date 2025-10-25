package io.appmetrica.analytics.coreutils.internal.cache;
/* loaded from: classes2.dex */
public interface CachedDataProvider {

    /* loaded from: classes2.dex */
    public static class CachedData<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f17711a;

        /* renamed from: b  reason: collision with root package name */
        private volatile long f17712b;

        /* renamed from: c  reason: collision with root package name */
        private volatile long f17713c;

        /* renamed from: d  reason: collision with root package name */
        private long f17714d = 0;

        /* renamed from: e  reason: collision with root package name */
        private Object f17715e = null;

        public CachedData(long j10, long j11, String str) {
            this.f17711a = String.format("[CachedData-%s]", str);
            this.f17712b = j10;
            this.f17713c = j11;
        }

        public T getData() {
            return (T) this.f17715e;
        }

        public long getExpiryTime() {
            return this.f17713c;
        }

        public long getRefreshTime() {
            return this.f17712b;
        }

        public final boolean isEmpty() {
            if (this.f17715e == null) {
                return true;
            }
            return false;
        }

        public void setData(T t10) {
            this.f17715e = t10;
            this.f17714d = System.currentTimeMillis();
        }

        public void setExpirationPolicy(long j10, long j11) {
            this.f17712b = j10;
            this.f17713c = j11;
        }

        public final boolean shouldClearData() {
            if (this.f17714d == 0) {
                return false;
            }
            long currentTimeMillis = System.currentTimeMillis() - this.f17714d;
            if (currentTimeMillis <= this.f17713c && currentTimeMillis >= 0) {
                return false;
            }
            return true;
        }

        public final boolean shouldUpdateData() {
            long currentTimeMillis = System.currentTimeMillis() - this.f17714d;
            if (currentTimeMillis <= this.f17712b && currentTimeMillis >= 0) {
                return false;
            }
            return true;
        }

        public String toString() {
            return "CachedData{tag='" + this.f17711a + "', refreshTime=" + this.f17712b + ", expiryTime=" + this.f17713c + ", mCachedTime=" + this.f17714d + ", mCachedData=" + this.f17715e + '}';
        }
    }
}
