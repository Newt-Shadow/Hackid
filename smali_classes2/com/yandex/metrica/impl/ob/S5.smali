.class public Lcom/yandex/metrica/impl/ob/S5;
.super Lcom/yandex/metrica/impl/ob/R5;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/yandex/metrica/impl/ob/e6;

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->f()Lcom/yandex/metrica/impl/ob/c9;

    move-result-object v0

    const-string v1, "background"

    invoke-direct {v3, v0, v1}, Lcom/yandex/metrica/impl/ob/e6;-><init>(Lcom/yandex/metrica/impl/ob/c9;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v4

    new-instance v5, Ldc/c;

    invoke-direct {v5}, Ldc/c;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/S5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;Lcom/yandex/metrica/impl/ob/e6;Lcom/yandex/metrica/impl/ob/M0;Ldc/c;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;Lcom/yandex/metrica/impl/ob/e6;Lcom/yandex/metrica/impl/ob/M0;Ldc/c;)V
    .locals 8

    .line 5
    sget-object v0, Lcom/yandex/metrica/impl/ob/f6;->c:Lcom/yandex/metrica/impl/ob/f6;

    .line 6
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Z5;->a(Lcom/yandex/metrica/impl/ob/f6;)Lcom/yandex/metrica/impl/ob/Z5$b;

    move-result-object v0

    const/16 v1, 0xe10

    .line 7
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Z5$b;->a(I)Lcom/yandex/metrica/impl/ob/Z5$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Z5$b;->a()Lcom/yandex/metrica/impl/ob/Z5;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/R5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/a6;Lcom/yandex/metrica/impl/ob/e6;Lcom/yandex/metrica/impl/ob/Z5;Lcom/yandex/metrica/impl/ob/M0;Ldc/c;)V

    return-void
.end method
