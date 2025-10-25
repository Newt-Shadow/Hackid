.class Lcom/yandex/metrica/impl/ob/Of$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/qm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Of;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ag;Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/g;Lcom/yandex/metrica/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/qm<",
        "Lcom/yandex/metrica/impl/ob/M0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Sf;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yandex/metrica/f;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Sf;Landroid/content/Context;Lcom/yandex/metrica/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Of$c;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Of$c;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Of$c;->c:Lcom/yandex/metrica/f;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of$c;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Of$c;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Of$c;->c:Lcom/yandex/metrica/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/R2;->a(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/impl/ob/M0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
