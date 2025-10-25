.class public Lcom/yandex/metrica/impl/ob/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/metrica/impl/ob/V0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/ResultReceiver;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/V0$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/V0$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/V0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Lcom/yandex/metrica/impl/ob/f0;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.yandex.metrica.CounterConfiguration.receiver"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->a:Landroid/os/ResultReceiver;

    const-string v0, "com.yandex.metrica.CounterConfiguration.identifiersList"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->b:Ljava/util/List;

    const-string v0, "com.yandex.metrica.CounterConfiguration.clidsForVerification"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/V0;->c:Ljava/util/Map;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/V0;->c:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Landroid/os/ResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/V0;->b:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/V0;->a:Landroid/os/ResultReceiver;

    if-nez p2, :cond_0

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/V0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->c:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/V0;->c:Ljava/util/Map;

    new-instance v2, Lcom/yandex/metrica/impl/ob/V0$a;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/V0$a;-><init>(Lcom/yandex/metrica/impl/ob/V0;)V

    invoke-static {p1, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ni;->a(Lcom/yandex/metrica/impl/ob/pi;Ljava/util/Collection;Ljava/util/Map;Lid/a;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/os/ResultReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->a:Landroid/os/ResultReceiver;

    .line 2
    .line 3
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->a:Landroid/os/ResultReceiver;

    .line 7
    .line 8
    const-string v1, "com.yandex.metrica.CounterConfiguration.receiver"

    .line 9
    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->b:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/V0;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "com.yandex.metrica.CounterConfiguration.identifiersList"

    .line 25
    .line 26
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V0;->c:Ljava/util/Map;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/util/Map;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "com.yandex.metrica.CounterConfiguration.clidsForVerification"

    .line 38
    .line 39
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
