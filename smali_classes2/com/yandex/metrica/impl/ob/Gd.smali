.class public Lcom/yandex/metrica/impl/ob/Gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ad;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/metrica/impl/ob/mn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/mn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Gd;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Gd;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Gd;->c:Lcom/yandex/metrica/impl/ob/mn;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Bd;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Gd;->c:Lcom/yandex/metrica/impl/ob/mn;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Gd;->a:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Gd;->b:Ljava/lang/String;

    .line 11
    .line 12
    const/16 v4, 0x1000

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/mn;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_0

    .line 25
    .line 26
    aget-object v4, v1, v3

    .line 27
    .line 28
    new-instance v5, Lcom/yandex/metrica/impl/ob/Bd;

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-direct {v5, v4, v6}, Lcom/yandex/metrica/impl/ob/Bd;-><init>(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0
.end method
