.class final Lcom/yandex/metrica/identifiers/impl/q;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# static fields
.field public static final e:Lcom/yandex/metrica/identifiers/impl/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/metrica/identifiers/impl/q;

    invoke-direct {v0}, Lcom/yandex/metrica/identifiers/impl/q;-><init>()V

    sput-object v0, Lcom/yandex/metrica/identifiers/impl/q;->e:Lcom/yandex/metrica/identifiers/impl/q;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yandex/metrica/identifiers/impl/u;->a:I

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    .line 15
    .line 16
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    instance-of v1, v0, Lcom/yandex/metrica/identifiers/impl/v;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    move-object p1, v0

    .line 27
    check-cast p1, Lcom/yandex/metrica/identifiers/impl/v;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/yandex/metrica/identifiers/impl/t;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/yandex/metrica/identifiers/impl/t;-><init>(Landroid/os/IBinder;)V

    .line 33
    .line 34
    .line 35
    move-object p1, v0

    .line 36
    :goto_0
    const-string v0, "OpenDeviceIdentifierService.Stub.asInterface(it)"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method
