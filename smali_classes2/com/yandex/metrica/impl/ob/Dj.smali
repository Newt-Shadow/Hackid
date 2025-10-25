.class public final Lcom/yandex/metrica/impl/ob/Dj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation build Lcom/yandex/metrica/DoNotInline;
.end annotation


# static fields
.field public static final a:Lcom/yandex/metrica/impl/ob/Dj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Dj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Dj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/Dj;->a:Lcom/yandex/metrica/impl/ob/Dj;

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

.method public static final a(Landroid/telephony/CellSignalStrengthLte;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/bo;->a(Landroid/telephony/CellSignalStrengthLte;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(Landroid/telephony/CellSignalStrengthLte;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/co;->a(Landroid/telephony/CellSignalStrengthLte;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final c(Landroid/telephony/CellSignalStrengthLte;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/ao;->a(Landroid/telephony/CellSignalStrengthLte;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
