.class final Lcom/yandex/metrica/impl/ob/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/om;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/y;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/v;)Lcom/yandex/metrica/impl/ob/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/om<",
        "Landroid/app/usage/UsageStatsManager;",
        "Lcom/yandex/metrica/impl/ob/z$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/v;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/v;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/y$a;->a:Lcom/yandex/metrica/impl/ob/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/app/usage/UsageStatsManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/y$a;->a:Lcom/yandex/metrica/impl/ob/v;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/app/usage/UsageStatsManager;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x1c

    .line 13
    .line 14
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    const/16 v0, 0x1e

    .line 21
    .line 22
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/16 v1, 0x2d

    .line 29
    .line 30
    if-ne p1, v1, :cond_0

    .line 31
    .line 32
    sget-object p1, Lcom/yandex/metrica/impl/ob/z$a;->e:Lcom/yandex/metrica/impl/ob/z$a;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/16 v1, 0xa

    .line 36
    .line 37
    if-eq p1, v1, :cond_4

    .line 38
    .line 39
    const/16 v1, 0x14

    .line 40
    .line 41
    if-eq p1, v1, :cond_3

    .line 42
    .line 43
    if-eq p1, v0, :cond_2

    .line 44
    .line 45
    const/16 v0, 0x28

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object p1, Lcom/yandex/metrica/impl/ob/z$a;->d:Lcom/yandex/metrica/impl/ob/z$a;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    sget-object p1, Lcom/yandex/metrica/impl/ob/z$a;->c:Lcom/yandex/metrica/impl/ob/z$a;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    sget-object p1, Lcom/yandex/metrica/impl/ob/z$a;->b:Lcom/yandex/metrica/impl/ob/z$a;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    sget-object p1, Lcom/yandex/metrica/impl/ob/z$a;->a:Lcom/yandex/metrica/impl/ob/z$a;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 63
    :goto_1
    return-object p1
.end method
