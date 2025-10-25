.class public final Lcom/yandex/metrica/impl/ob/Ej;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation build Lcom/yandex/metrica/DoNotInline;
.end annotation


# static fields
.field public static final a:Lcom/yandex/metrica/impl/ob/Ej;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ej;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ej;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ej;->a:Lcom/yandex/metrica/impl/ob/Ej;

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

.method public static final a(Landroid/telephony/CellIdentityLte;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/do;->a(Landroid/telephony/CellIdentityLte;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
