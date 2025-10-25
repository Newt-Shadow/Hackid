package io.flutter.plugins.inapppurchase;

import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.i;
import com.android.billingclient.api.j;
import com.android.billingclient.api.l;
import io.flutter.plugins.inapppurchase.Messages;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Currency;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Translator {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.flutter.plugins.inapppurchase.Translator$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformProductType;

        static {
            int[] iArr = new int[Messages.PlatformProductType.values().length];
            $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformProductType = iArr;
            try {
                iArr[Messages.PlatformProductType.INAPP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformProductType[Messages.PlatformProductType.SUBS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    Translator() {
    }

    static String currencySymbolFromCode(String str) {
        return Currency.getInstance(str).getSymbol();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Messages.PlatformAlternativeBillingOnlyReportingDetailsResponse fromAlternativeBillingOnlyReportingDetails(com.android.billingclient.api.h hVar, com.android.billingclient.api.b bVar) {
        String a10;
        Messages.PlatformAlternativeBillingOnlyReportingDetailsResponse.Builder billingResult = new Messages.PlatformAlternativeBillingOnlyReportingDetailsResponse.Builder().setBillingResult(fromBillingResult(hVar));
        if (bVar == null) {
            a10 = "";
        } else {
            a10 = bVar.a();
        }
        return billingResult.setExternalTransactionToken(a10).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Messages.PlatformBillingConfigResponse fromBillingConfig(com.android.billingclient.api.h hVar, com.android.billingclient.api.f fVar) {
        String a10;
        Messages.PlatformBillingConfigResponse.Builder billingResult = new Messages.PlatformBillingConfigResponse.Builder().setBillingResult(fromBillingResult(hVar));
        if (fVar == null) {
            a10 = "";
        } else {
            a10 = fVar.a();
        }
        return billingResult.setCountryCode(a10).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Messages.PlatformBillingResult fromBillingResult(com.android.billingclient.api.h hVar) {
        return new Messages.PlatformBillingResult.Builder().setResponseCode(Long.valueOf(hVar.b())).setDebugMessage(hVar.a()).build();
    }

    static Messages.PlatformOneTimePurchaseOfferDetails fromOneTimePurchaseOfferDetails(i.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new Messages.PlatformOneTimePurchaseOfferDetails.Builder().setPriceAmountMicros(Long.valueOf(aVar.b())).setPriceCurrencyCode(aVar.c()).setFormattedPrice(aVar.a()).build();
    }

    static Messages.PlatformPricingPhase fromPricingPhase(i.b bVar) {
        return new Messages.PlatformPricingPhase.Builder().setFormattedPrice(bVar.c()).setPriceCurrencyCode(bVar.e()).setPriceAmountMicros(Long.valueOf(bVar.d())).setBillingCycleCount(Long.valueOf(bVar.a())).setBillingPeriod(bVar.b()).setRecurrenceMode(toPlatformRecurrenceMode(bVar.f())).build();
    }

    static List<Messages.PlatformPricingPhase> fromPricingPhases(i.c cVar) {
        ArrayList arrayList = new ArrayList();
        for (i.b bVar : cVar.a()) {
            arrayList.add(fromPricingPhase(bVar));
        }
        return arrayList;
    }

    static Messages.PlatformProductDetails fromProductDetail(com.android.billingclient.api.i iVar) {
        return new Messages.PlatformProductDetails.Builder().setTitle(iVar.g()).setDescription(iVar.a()).setProductId(iVar.d()).setProductType(toPlatformProductType(iVar.e())).setName(iVar.b()).setOneTimePurchaseOfferDetails(fromOneTimePurchaseOfferDetails(iVar.c())).setSubscriptionOfferDetails(fromSubscriptionOfferDetailsList(iVar.f())).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Messages.PlatformProductDetails> fromProductDetailsList(List<com.android.billingclient.api.i> list) {
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (com.android.billingclient.api.i iVar : list) {
            arrayList.add(fromProductDetail(iVar));
        }
        return arrayList;
    }

    static Messages.PlatformPurchase fromPurchase(Purchase purchase) {
        Messages.PlatformPurchase.Builder quantity = new Messages.PlatformPurchase.Builder().setOrderId(purchase.c()).setPackageName(purchase.e()).setPurchaseTime(Long.valueOf(purchase.h())).setPurchaseToken(purchase.i()).setSignature(purchase.k()).setProducts(purchase.f()).setIsAutoRenewing(Boolean.valueOf(purchase.n())).setOriginalJson(purchase.d()).setDeveloperPayload(purchase.b()).setIsAcknowledged(Boolean.valueOf(purchase.m())).setPurchaseState(toPlatformPurchaseState(purchase.g())).setQuantity(Long.valueOf(purchase.j()));
        com.android.billingclient.api.a a10 = purchase.a();
        if (a10 != null) {
            quantity.setAccountIdentifiers(new Messages.PlatformAccountIdentifiers.Builder().setObfuscatedAccountId(a10.a()).setObfuscatedProfileId(a10.b()).build());
        }
        return quantity.build();
    }

    static Messages.PlatformPurchaseHistoryRecord fromPurchaseHistoryRecord(PurchaseHistoryRecord purchaseHistoryRecord) {
        return new Messages.PlatformPurchaseHistoryRecord.Builder().setPurchaseTime(Long.valueOf(purchaseHistoryRecord.d())).setPurchaseToken(purchaseHistoryRecord.e()).setSignature(purchaseHistoryRecord.g()).setProducts(purchaseHistoryRecord.c()).setDeveloperPayload(purchaseHistoryRecord.a()).setOriginalJson(purchaseHistoryRecord.b()).setQuantity(Long.valueOf(purchaseHistoryRecord.f())).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Messages.PlatformPurchaseHistoryRecord> fromPurchaseHistoryRecordList(List<PurchaseHistoryRecord> list) {
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (PurchaseHistoryRecord purchaseHistoryRecord : list) {
            arrayList.add(fromPurchaseHistoryRecord(purchaseHistoryRecord));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Messages.PlatformPurchase> fromPurchasesList(List<Purchase> list) {
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Purchase purchase : list) {
            arrayList.add(fromPurchase(purchase));
        }
        return arrayList;
    }

    static Messages.PlatformSubscriptionOfferDetails fromSubscriptionOfferDetails(i.d dVar) {
        return new Messages.PlatformSubscriptionOfferDetails.Builder().setOfferId(dVar.b()).setBasePlanId(dVar.a()).setOfferTags(dVar.c()).setOfferToken(dVar.d()).setPricingPhases(fromPricingPhases(dVar.e())).build();
    }

    static List<Messages.PlatformSubscriptionOfferDetails> fromSubscriptionOfferDetailsList(List<i.d> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (i.d dVar : list) {
            arrayList.add(fromSubscriptionOfferDetails(dVar));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Messages.PlatformUserChoiceDetails fromUserChoiceDetails(com.android.billingclient.api.l lVar) {
        return new Messages.PlatformUserChoiceDetails.Builder().setExternalTransactionToken(lVar.a()).setOriginalExternalTransactionId(lVar.b()).setProducts(fromUserChoiceProductsList(lVar.c())).build();
    }

    static Messages.PlatformUserChoiceProduct fromUserChoiceProduct(l.a aVar) {
        return new Messages.PlatformUserChoiceProduct.Builder().setId(aVar.a()).setOfferToken(aVar.b()).setType(toPlatformProductType(aVar.c())).build();
    }

    static List<Messages.PlatformUserChoiceProduct> fromUserChoiceProductsList(List<l.a> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (l.a aVar : list) {
            arrayList.add(fromUserChoiceProduct(aVar));
        }
        return arrayList;
    }

    static Messages.PlatformProductType toPlatformProductType(String str) {
        char c10;
        int hashCode = str.hashCode();
        if (hashCode != 3541555) {
            if (hashCode == 100343516 && str.equals("inapp")) {
                c10 = 0;
            }
            c10 = 65535;
        } else {
            if (str.equals("subs")) {
                c10 = 2;
            }
            c10 = 65535;
        }
        if (c10 != 2) {
            return Messages.PlatformProductType.INAPP;
        }
        return Messages.PlatformProductType.SUBS;
    }

    static Messages.PlatformPurchaseState toPlatformPurchaseState(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return Messages.PlatformPurchaseState.UNSPECIFIED;
                }
                return Messages.PlatformPurchaseState.PENDING;
            }
            return Messages.PlatformPurchaseState.PURCHASED;
        }
        return Messages.PlatformPurchaseState.UNSPECIFIED;
    }

    static Messages.PlatformRecurrenceMode toPlatformRecurrenceMode(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return Messages.PlatformRecurrenceMode.NON_RECURRING;
                }
                return Messages.PlatformRecurrenceMode.NON_RECURRING;
            }
            return Messages.PlatformRecurrenceMode.FINITE_RECURRING;
        }
        return Messages.PlatformRecurrenceMode.INFINITE_RECURRING;
    }

    static j.b toProduct(Messages.PlatformQueryProduct platformQueryProduct) {
        return j.b.a().b(platformQueryProduct.getProductId()).c(toProductTypeString(platformQueryProduct.getProductType())).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<j.b> toProductList(List<Messages.PlatformQueryProduct> list) {
        ArrayList arrayList = new ArrayList();
        for (Messages.PlatformQueryProduct platformQueryProduct : list) {
            arrayList.add(toProduct(platformQueryProduct));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String toProductTypeString(Messages.PlatformProductType platformProductType) {
        int i10 = AnonymousClass1.$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformProductType[platformProductType.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return "subs";
            }
            throw new Messages.FlutterError("UNKNOWN_TYPE", "Unknown product type: " + platformProductType, null);
        }
        return "inapp";
    }
}
