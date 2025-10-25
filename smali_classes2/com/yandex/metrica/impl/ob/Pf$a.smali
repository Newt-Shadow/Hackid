.class Lcom/yandex/metrica/impl/ob/Pf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Pf;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Pf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Pf;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Pf$a;->b:Lcom/yandex/metrica/impl/ob/Pf;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pf$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf$a;->b:Lcom/yandex/metrica/impl/ob/Pf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Pf;->a(Lcom/yandex/metrica/impl/ob/Pf;)Lcom/yandex/metrica/impl/ob/Sf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Pf$a;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    .line 13
    .line 14
    .line 15
    return-void
.end method
