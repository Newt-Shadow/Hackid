.class public Lcom/yandex/metrica/impl/ob/Vf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/Uf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/P;->c()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Uf;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/yandex/metrica/impl/ob/Vf;->a:Lcom/yandex/metrica/impl/ob/Uf;

    .line 15
    .line 16
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/Uf;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Vf;->a:Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    return-object v0
.end method
