.class Lcom/yandex/metrica/impl/ob/Pf$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Pf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/Pf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pf;

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
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sf;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Sf;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Pf;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Sf;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/yandex/metrica/impl/ob/Pf$b;->a:Lcom/yandex/metrica/impl/ob/Pf;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic a()Lcom/yandex/metrica/impl/ob/Pf;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Pf$b;->a:Lcom/yandex/metrica/impl/ob/Pf;

    .line 2
    .line 3
    return-object v0
.end method
