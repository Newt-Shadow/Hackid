.class public final Lcom/yandex/metrica/impl/ob/Wj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation build Lcom/yandex/metrica/DoNotInline;
.end annotation


# static fields
.field public static final a:Lcom/yandex/metrica/impl/ob/Wj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Wj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Wj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/Wj;->a:Lcom/yandex/metrica/impl/ob/Wj;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/so;->a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final b(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/to;->a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
