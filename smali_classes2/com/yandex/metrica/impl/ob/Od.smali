.class public Lcom/yandex/metrica/impl/ob/Od;
.super Lcom/yandex/metrica/impl/ob/Kd;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final g:Lcom/yandex/metrica/impl/ob/Rd;


# instance fields
.field private f:Lcom/yandex/metrica/impl/ob/Rd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    const-string v1, "PREF_KEY_OFFSET"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/Od;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Kd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 5
    .line 6
    sget-object p2, Lcom/yandex/metrica/impl/ob/Od;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Od;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Od;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    int-to-long v2, p1

    .line 10
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "_servertimeoffset"

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Od;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/Kd;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Kd;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
