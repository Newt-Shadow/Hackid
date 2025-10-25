package io.appmetrica.analytics.billinginterface.internal.config;
/* loaded from: classes2.dex */
public class BillingConfig {
    public final int firstCollectingInappMaxAgeSeconds;
    public final int sendFrequencySeconds;

    public BillingConfig(int i10, int i11) {
        this.sendFrequencySeconds = i10;
        this.firstCollectingInappMaxAgeSeconds = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BillingConfig billingConfig = (BillingConfig) obj;
        if (this.sendFrequencySeconds == billingConfig.sendFrequencySeconds && this.firstCollectingInappMaxAgeSeconds == billingConfig.firstCollectingInappMaxAgeSeconds) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.sendFrequencySeconds * 31) + this.firstCollectingInappMaxAgeSeconds;
    }

    public String toString() {
        return "BillingConfig{sendFrequencySeconds=" + this.sendFrequencySeconds + ", firstCollectingInappMaxAgeSeconds=" + this.firstCollectingInappMaxAgeSeconds + "}";
    }
}
