.class public final Lcom/yandex/metrica/networktasks/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/networktasks/impl/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/networktasks/impl/h;

    invoke-direct {v0}, Lcom/yandex/metrica/networktasks/impl/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/impl/g;-><init>(Lcom/yandex/metrica/networktasks/impl/h;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/networktasks/impl/h;)V
    .locals 1

    .line 2
    const-string v0, "timeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/networktasks/impl/g;->a:Lcom/yandex/metrica/networktasks/impl/h;

    return-void
.end method


# virtual methods
.method public final a(JJLjava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p5, p0, Lcom/yandex/metrica/networktasks/impl/g;->a:Lcom/yandex/metrica/networktasks/impl/h;

    .line 7
    .line 8
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const/16 p5, 0x3e8

    .line 16
    .line 17
    int-to-long v2, p5

    .line 18
    div-long/2addr v0, v2

    .line 19
    cmp-long p5, v0, p1

    .line 20
    .line 21
    if-gez p5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-long/2addr v0, p1

    .line 25
    cmp-long p1, v0, p3

    .line 26
    .line 27
    if-ltz p1, :cond_1

    .line 28
    .line 29
    :goto_0
    const/4 p1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_1
    return p1
.end method
