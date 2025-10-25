.class Lcom/yandex/metrica/impl/ob/Rf$d;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Rf;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Rf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Rf;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rf$d;->b:Lcom/yandex/metrica/impl/ob/Rf;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/Rf$d;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf$d;->b:Lcom/yandex/metrica/impl/ob/Rf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Rf;->a(Lcom/yandex/metrica/impl/ob/Rf;)Lcom/yandex/metrica/impl/ob/Sf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Rf$d;->a:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/R2;->b(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
