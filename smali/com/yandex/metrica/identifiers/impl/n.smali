.class final Lcom/yandex/metrica/identifiers/impl/n;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# static fields
.field public static final e:Lcom/yandex/metrica/identifiers/impl/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/metrica/identifiers/impl/n;

    invoke-direct {v0}, Lcom/yandex/metrica/identifiers/impl/n;-><init>()V

    sput-object v0, Lcom/yandex/metrica/identifiers/impl/n;->e:Lcom/yandex/metrica/identifiers/impl/n;

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
    .locals 1

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
    invoke-static {p1}, Lcom/yandex/metrica/identifiers/impl/b;->a(Landroid/os/IBinder;)Lcom/yandex/metrica/identifiers/impl/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "YandexAdvIdInterface.Stub.asInterface(it)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method
