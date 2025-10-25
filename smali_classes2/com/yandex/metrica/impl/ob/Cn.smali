.class public Lcom/yandex/metrica/impl/ob/Cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yandex/metrica/impl/ob/F2;",
        ">;"
    }
.end annotation


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
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/F2;

    .line 2
    .line 3
    check-cast p2, Lcom/yandex/metrica/impl/ob/F2;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/F2;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p2, Lcom/yandex/metrica/impl/ob/F2;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/F2;->b:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/F2;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    :goto_0
    const/16 p1, 0xa

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_1
    return p1
.end method
