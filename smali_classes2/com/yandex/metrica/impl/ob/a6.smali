.class public Lcom/yandex/metrica/impl/ob/a6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/b8;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/b8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/a6;->a:Lcom/yandex/metrica/impl/ob/b8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a6;->a:Lcom/yandex/metrica/impl/ob/b8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b8;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, 0x2540be400L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-gez v4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    add-long/2addr v2, v0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/a6;->a:Lcom/yandex/metrica/impl/ob/b8;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b8;->a(J)V

    .line 23
    .line 24
    .line 25
    return-wide v2
.end method
