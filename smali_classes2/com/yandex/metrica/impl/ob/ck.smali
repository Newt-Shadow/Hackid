.class Lcom/yandex/metrica/impl/ob/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ok;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/mn;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/ck;-><init>(Lcom/yandex/metrica/impl/ob/mn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/mn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ck;->a:Lcom/yandex/metrica/impl/ob/mn;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ck;->a:Lcom/yandex/metrica/impl/ob/mn;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 v2, 0x80

    .line 16
    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-object p1, v0

    .line 23
    :goto_0
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    return-object v0
.end method
