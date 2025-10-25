.class Lcom/yandex/metrica/impl/ob/S2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/S2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/S2;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/S2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/S2$a;->a:Lcom/yandex/metrica/impl/ob/S2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/S2$a;->a:Lcom/yandex/metrica/impl/ob/S2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/S2;->a:Lcom/yandex/metrica/impl/ob/R2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/R2;->b(Lcom/yandex/metrica/impl/ob/R2;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/oh;->a(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
