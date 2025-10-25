.class Lcom/yandex/metrica/impl/ob/m2$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/Pd;

.field private b:Lcom/yandex/metrica/impl/ob/f9;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pd;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/Pd;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$j;->a:Lcom/yandex/metrica/impl/ob/Pd;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/f9;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ja;->p()Lcom/yandex/metrica/impl/ob/S7;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/f9;-><init>(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$j;->b:Lcom/yandex/metrica/impl/ob/f9;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$j;->a:Lcom/yandex/metrica/impl/ob/Pd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Pd;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/m2$j;->b:Lcom/yandex/metrica/impl/ob/f9;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/f9;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/f9;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Pd;->b(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
