.class Lcom/yandex/metrica/impl/ob/Of$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Of;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/f;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Of;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Of$s;->b:Lcom/yandex/metrica/impl/ob/Of;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Of$s;->a:Lcom/yandex/metrica/f;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Of$s;->b:Lcom/yandex/metrica/impl/ob/Of;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Of$s;->a:Lcom/yandex/metrica/f;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Of;->a(Lcom/yandex/metrica/impl/ob/Of;Lcom/yandex/metrica/f;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
