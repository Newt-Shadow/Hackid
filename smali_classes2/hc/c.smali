.class public final Lhc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhc/c$a;
    }
.end annotation


# static fields
.field public static final c:Lhc/c$a;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final b:Lhc/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhc/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhc/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lhc/c;->c:Lhc/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhc/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v0, Lhc/c$b;

    invoke-direct {v0, p0}, Lhc/c$b;-><init>(Lhc/c;)V

    iput-object v0, p0, Lhc/c;->b:Lhc/c$b;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lhc/c;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lhc/c;)Lhc/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lhc/c;->b:Lhc/c$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lhc/c;->b:Lhc/c$b;

    .line 2
    .line 3
    invoke-static {v0}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lhc/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method
