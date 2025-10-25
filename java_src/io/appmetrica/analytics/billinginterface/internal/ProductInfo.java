package io.appmetrica.analytics.billinginterface.internal;
/* loaded from: classes2.dex */
public class ProductInfo {
    public final boolean autoRenewing;
    public final int introductoryPriceCycles;
    public final long introductoryPriceMicros;
    public final Period introductoryPricePeriod;
    public final String priceCurrency;
    public final long priceMicros;
    public final String purchaseOriginalJson;
    public final long purchaseTime;
    public final String purchaseToken;
    public final int quantity;
    public final String signature;
    public final String sku;
    public final Period subscriptionPeriod;
    public final ProductType type;

    public ProductInfo(ProductType productType, String str, int i10, long j10, String str2, long j11, Period period, int i11, Period period2, String str3, String str4, long j12, boolean z10, String str5) {
        this.type = productType;
        this.sku = str;
        this.quantity = i10;
        this.priceMicros = j10;
        this.priceCurrency = str2;
        this.introductoryPriceMicros = j11;
        this.introductoryPricePeriod = period;
        this.introductoryPriceCycles = i11;
        this.subscriptionPeriod = period2;
        this.signature = str3;
        this.purchaseToken = str4;
        this.purchaseTime = j12;
        this.autoRenewing = z10;
        this.purchaseOriginalJson = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProductInfo productInfo = (ProductInfo) obj;
        if (this.quantity != productInfo.quantity || this.priceMicros != productInfo.priceMicros || this.introductoryPriceMicros != productInfo.introductoryPriceMicros || this.introductoryPriceCycles != productInfo.introductoryPriceCycles || this.purchaseTime != productInfo.purchaseTime || this.autoRenewing != productInfo.autoRenewing || this.type != productInfo.type || !this.sku.equals(productInfo.sku) || !this.priceCurrency.equals(productInfo.priceCurrency)) {
            return false;
        }
        Period period = this.introductoryPricePeriod;
        if (period == null ? productInfo.introductoryPricePeriod != null : !period.equals(productInfo.introductoryPricePeriod)) {
            return false;
        }
        Period period2 = this.subscriptionPeriod;
        if (period2 == null ? productInfo.subscriptionPeriod != null : !period2.equals(productInfo.subscriptionPeriod)) {
            return false;
        }
        if (!this.signature.equals(productInfo.signature) || !this.purchaseToken.equals(productInfo.purchaseToken)) {
            return false;
        }
        return this.purchaseOriginalJson.equals(productInfo.purchaseOriginalJson);
    }

    public int hashCode() {
        int i10;
        int hashCode = this.sku.hashCode();
        long j10 = this.priceMicros;
        int hashCode2 = this.priceCurrency.hashCode();
        long j11 = this.introductoryPriceMicros;
        int hashCode3 = (((hashCode2 + ((((((hashCode + (this.type.hashCode() * 31)) * 31) + this.quantity) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31)) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        Period period = this.introductoryPricePeriod;
        int i11 = 0;
        if (period != null) {
            i10 = period.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (((hashCode3 + i10) * 31) + this.introductoryPriceCycles) * 31;
        Period period2 = this.subscriptionPeriod;
        if (period2 != null) {
            i11 = period2.hashCode();
        }
        int hashCode4 = this.signature.hashCode();
        int hashCode5 = this.purchaseToken.hashCode();
        long j12 = this.purchaseTime;
        return this.purchaseOriginalJson.hashCode() + ((((((hashCode5 + ((hashCode4 + ((i12 + i11) * 31)) * 31)) * 31) + ((int) ((j12 >>> 32) ^ j12))) * 31) + (this.autoRenewing ? 1 : 0)) * 31);
    }

    public String toString() {
        return "ProductInfo{type=" + this.type + ", sku='" + this.sku + "', quantity=" + this.quantity + ", priceMicros=" + this.priceMicros + ", priceCurrency='" + this.priceCurrency + "', introductoryPriceMicros=" + this.introductoryPriceMicros + ", introductoryPricePeriod=" + this.introductoryPricePeriod + ", introductoryPriceCycles=" + this.introductoryPriceCycles + ", subscriptionPeriod=" + this.subscriptionPeriod + ", signature='" + this.signature + "', purchaseToken='" + this.purchaseToken + "', purchaseTime=" + this.purchaseTime + ", autoRenewing=" + this.autoRenewing + ", purchaseOriginalJson='" + this.purchaseOriginalJson + "'}";
    }
}
