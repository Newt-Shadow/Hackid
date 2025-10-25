.class public final Lcom/yandex/metrica/impl/ob/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation build Lcom/yandex/metrica/DoNotInline;
.end annotation


# static fields
.field public static final a:Lcom/yandex/metrica/impl/ob/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/y;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/y;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/y;->a:Lcom/yandex/metrica/impl/ob/y;

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

.method public static final a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/v;)Lcom/yandex/metrica/impl/ob/z;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/z;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/y$a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/y$a;-><init>(Lcom/yandex/metrica/impl/ob/v;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "getting app standby bucket"

    .line 9
    .line 10
    const-string v2, "usageStatsManager"

    .line 11
    .line 12
    const-string v3, "usagestats"

    .line 13
    .line 14
    invoke-static {v1, p0, v3, p1, v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Lcom/yandex/metrica/impl/ob/om;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/yandex/metrica/impl/ob/z$a;

    .line 19
    .line 20
    sget-object v1, Lcom/yandex/metrica/impl/ob/y$b;->a:Lcom/yandex/metrica/impl/ob/y$b;

    .line 21
    .line 22
    const-string v2, "getting is background restricted"

    .line 23
    .line 24
    const-string v3, "activityManager"

    .line 25
    .line 26
    const-string v4, "activity"

    .line 27
    .line 28
    invoke-static {v1, p0, v4, v2, v3}, Lcom/yandex/metrica/impl/ob/A2;->a(Lcom/yandex/metrica/impl/ob/om;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-direct {v0, p1, p0}, Lcom/yandex/metrica/impl/ob/z;-><init>(Lcom/yandex/metrica/impl/ob/z$a;Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
