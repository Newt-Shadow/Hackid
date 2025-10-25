.class public Lcom/yandex/metrica/impl/ob/Zc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Vb;

.field private final b:Lcom/yandex/metrica/impl/ob/Yc;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Vb;Lcom/yandex/metrica/impl/ob/Yc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Zc;->a:Lcom/yandex/metrica/impl/ob/Vb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Zc;->b:Lcom/yandex/metrica/impl/ob/Yc;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/pf$a;
    .locals 1

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zc;->a:Lcom/yandex/metrica/impl/ob/Vb;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Vb;->a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/lc;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Zc;->b:Lcom/yandex/metrica/impl/ob/Yc;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Yc;->a(Lcom/yandex/metrica/impl/ob/lc;)Lcom/yandex/metrica/impl/ob/pf$a;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return-object p1
.end method
