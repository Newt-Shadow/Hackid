.class Lcom/yandex/metrica/impl/ob/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ok;


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ek;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    .line 4
    invoke-virtual {p2, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/mn;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ek;->a:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ek;->a:Landroid/os/Bundle;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ek;->a:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p1
.end method
