.class public Lcom/yandex/metrica/impl/ob/jc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/T7;

.field private final b:Lcom/yandex/metrica/impl/ob/Vb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ja;->e()Lcom/yandex/metrica/impl/ob/T7;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Vb;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Vb;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/jc;-><init>(Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/impl/ob/Vb;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/impl/ob/Vb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/jc;->a:Lcom/yandex/metrica/impl/ob/T7;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Lcom/yandex/metrica/impl/ob/Vb;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/lc;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jc;->b:Lcom/yandex/metrica/impl/ob/Vb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Vb;->a(Lcom/yandex/metrica/impl/ob/lc;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/jc;->a:Lcom/yandex/metrica/impl/ob/T7;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->d()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1, v2, v3, v0}, Lcom/yandex/metrica/impl/ob/J7;->a(JLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
