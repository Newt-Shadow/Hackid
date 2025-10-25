package io.appmetrica.analytics;

import io.appmetrica.analytics.impl.C1046ae;
import io.appmetrica.analytics.impl.C1304kn;
import java.util.Currency;
/* loaded from: classes2.dex */
public class Revenue {
    public final Currency currency;
    public final String payload;
    public final long priceMicros;
    public final String productID;
    public final Integer quantity;
    public final Receipt receipt;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: g  reason: collision with root package name */
        private static final C1304kn f17538g = new C1304kn(new C1046ae("revenue currency"));

        /* renamed from: a  reason: collision with root package name */
        final long f17539a;

        /* renamed from: b  reason: collision with root package name */
        final Currency f17540b;

        /* renamed from: c  reason: collision with root package name */
        Integer f17541c;

        /* renamed from: d  reason: collision with root package name */
        String f17542d;

        /* renamed from: e  reason: collision with root package name */
        String f17543e;

        /* renamed from: f  reason: collision with root package name */
        Receipt f17544f;

        /* synthetic */ Builder(long j10, Currency currency, int i10) {
            this(j10, currency);
        }

        public Revenue build() {
            return new Revenue(this, 0);
        }

        public Builder withPayload(String str) {
            this.f17543e = str;
            return this;
        }

        public Builder withProductID(String str) {
            this.f17542d = str;
            return this;
        }

        public Builder withQuantity(Integer num) {
            this.f17541c = num;
            return this;
        }

        public Builder withReceipt(Receipt receipt) {
            this.f17544f = receipt;
            return this;
        }

        private Builder(long j10, Currency currency) {
            f17538g.a(currency);
            this.f17539a = j10;
            this.f17540b = currency;
        }
    }

    /* loaded from: classes2.dex */
    public static class Receipt {
        public final String data;
        public final String signature;

        /* loaded from: classes2.dex */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            private String f17545a;

            /* renamed from: b  reason: collision with root package name */
            private String f17546b;

            /* synthetic */ Builder(int i10) {
                this();
            }

            public Receipt build() {
                return new Receipt(this, 0);
            }

            public Builder withData(String str) {
                this.f17545a = str;
                return this;
            }

            public Builder withSignature(String str) {
                this.f17546b = str;
                return this;
            }

            private Builder() {
            }
        }

        /* synthetic */ Receipt(Builder builder, int i10) {
            this(builder);
        }

        public static Builder newBuilder() {
            return new Builder(0);
        }

        private Receipt(Builder builder) {
            this.data = builder.f17545a;
            this.signature = builder.f17546b;
        }
    }

    /* synthetic */ Revenue(Builder builder, int i10) {
        this(builder);
    }

    public static Builder newBuilder(long j10, Currency currency) {
        return new Builder(j10, currency, 0);
    }

    private Revenue(Builder builder) {
        this.priceMicros = builder.f17539a;
        this.currency = builder.f17540b;
        this.quantity = builder.f17541c;
        this.productID = builder.f17542d;
        this.payload = builder.f17543e;
        this.receipt = builder.f17544f;
    }
}
