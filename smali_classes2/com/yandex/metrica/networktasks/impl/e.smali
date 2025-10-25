.class public final Lcom/yandex/metrica/networktasks/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/networktasks/api/NetworkTask;Lcom/yandex/metrica/networktasks/impl/c;)Lcom/yandex/metrica/networktasks/impl/f;
    .locals 3

    .line 1
    const-string v0, "networkTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "rootThreadStateSource"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/yandex/metrica/networktasks/impl/f;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/yandex/metrica/networktasks/impl/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/yandex/metrica/networktasks/impl/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p1, p2, v0}, Lcom/yandex/metrica/networktasks/impl/f;-><init>(Lcom/yandex/metrica/networktasks/api/NetworkTask;Lcom/yandex/metrica/networktasks/impl/c;Lcom/yandex/metrica/networktasks/impl/d;)V

    .line 25
    .line 26
    .line 27
    return-object v2
.end method
