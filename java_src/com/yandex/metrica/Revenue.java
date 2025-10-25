package com.yandex.metrica;

import com.yandex.metrica.impl.ob.Gn;
import com.yandex.metrica.impl.ob.Hn;
import com.yandex.metrica.impl.ob.Kn;
import java.util.Currency;
/* loaded from: classes.dex */
public class Revenue {
    public final Currency currency;
    public final String payload;
    @Deprecated
    public final Double price;
    public final Long priceMicros;
    public final String productID;
    public final Integer quantity;
    public final Receipt receipt;

    /* loaded from: classes.dex */
    public static class Receipt {
        public final String data;
        public final String signature;

        /* loaded from: classes.dex */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            private String f9566a;

            /* renamed from: b  reason: collision with root package name */
            private String f9567b;

            Builder() {
            }

            public Receipt build() {
                return new Receipt(this);
            }

            public Builder withData(String str) {
                this.f9566a = str;
                return this;
            }

            public Builder withSignature(String str) {
                this.f9567b = str;
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        private Receipt(Builder builder) {
            this.data = builder.f9566a;
            this.signature = builder.f9567b;
        }
    }

    @Deprecated
    public static Builder newBuilder(double d10, Currency currency) {
        return new Builder(d10, currency);
    }

    public static Builder newBuilderWithMicros(long j10, Currency currency) {
        return new Builder(j10, currency);
    }

    private Revenue(Builder builder) {
        this.price = builder.f9559a;
        this.priceMicros = builder.f9560b;
        this.currency = builder.f9561c;
        this.quantity = builder.f9562d;
        this.productID = builder.f9563e;
        this.payload = builder.f9564f;
        this.receipt = builder.f9565g;
    }

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: h  reason: collision with root package name */
        private static final Kn f9558h = new Hn(new Gn("revenue currency"));

        /* renamed from: a  reason: collision with root package name */
        Double f9559a;

        /* renamed from: b  reason: collision with root package name */
        Long f9560b;

        /* renamed from: c  reason: collision with root package name */
        Currency f9561c;

        /* renamed from: d  reason: collision with root package name */
        Integer f9562d;

        /* renamed from: e  reason: collision with root package name */
        String f9563e;

        /* renamed from: f  reason: collision with root package name */
        String f9564f;

        /* renamed from: g  reason: collision with root package name */
        Receipt f9565g;

        Builder(double d10, Currency currency) {
            ((Hn) f9558h).a(currency);
            this.f9559a = Double.valueOf(d10);
            this.f9561c = currency;
        }

        public Revenue build() {
            return new Revenue(this);
        }

        public Builder withPayload(String str) {
            this.f9564f = str;
            return this;
        }

        public Builder withProductID(String str) {
            this.f9563e = str;
            return this;
        }

        public Builder withQuantity(Integer num) {
            this.f9562d = num;
            return this;
        }

        public Builder withReceipt(Receipt receipt) {
            this.f9565g = receipt;
            return this;
        }

        Builder(long j10, Currency currency) {
            ((Hn) f9558h).a(currency);
            this.f9560b = Long.valueOf(j10);
            this.f9561c = currency;
        }
    }
}
