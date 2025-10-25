.class Lcom/yandex/metrica/impl/ob/m2$m;
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
    name = "m"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/e9;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/e9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$m;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/f9;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ja;->q()Lcom/yandex/metrica/impl/ob/S7;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/f9;-><init>(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/f9;->g()Lcom/yandex/metrica/impl/ob/qi;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/qi;->u:J

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-lez p1, :cond_0

    .line 31
    .line 32
    move p1, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p1, v1

    .line 35
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/m2$m;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 36
    .line 37
    const/4 v5, -0x1

    .line 38
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/e9;->b(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    cmp-long v2, v4, v2

    .line 43
    .line 44
    if-lez v2, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v0, v1

    .line 48
    :goto_1
    if-nez p1, :cond_2

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$m;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/e9;->c(Z)Lcom/yandex/metrica/impl/ob/e9;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method
