.class public Lcom/yandex/metrica/impl/ob/Ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)[B
    .locals 0

    .line 1
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [B

    .line 18
    .line 19
    return-object p1
.end method
