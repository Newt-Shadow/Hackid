.class public Lcom/yandex/metrica/impl/ob/od;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;


# static fields
.field private static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/yandex/metrica/impl/ob/H1$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/Rl;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/H1$d;->m:Lcom/yandex/metrica/impl/ob/H1$d;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/yandex/metrica/impl/ob/od;->c:Ljava/util/EnumSet;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ml;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ml;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/od;->a:Lcom/yandex/metrica/impl/ob/Rl;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/od;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public canBeExecuted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/od;->a:Lcom/yandex/metrica/impl/ob/Rl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/od;->b:Landroid/content/Context;

    .line 4
    .line 5
    check-cast v0, Lcom/yandex/metrica/impl/ob/Ml;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/H1;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/H1$d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/yandex/metrica/impl/ob/od;->c:Ljava/util/EnumSet;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    xor-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    return v0
.end method
