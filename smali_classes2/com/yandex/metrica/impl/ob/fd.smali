.class public Lcom/yandex/metrica/impl/ob/fd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/Fc;)Lcom/yandex/metrica/networktasks/api/NetworkTask;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/gd$c;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Cg;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Cg;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/gd$c;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Cg;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/gd$b;

    .line 12
    .line 13
    invoke-direct {v1, p2, p3}, Lcom/yandex/metrica/impl/ob/gd$b;-><init>(Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd$c;->a(Lcom/yandex/metrica/impl/ob/gd$b;)Lcom/yandex/metrica/impl/ob/gd;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/F0;->u()Lcom/yandex/metrica/impl/ob/s2;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p1, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/rd;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;)Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method
