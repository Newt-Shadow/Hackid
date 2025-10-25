.class public final Lqe/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe/b$b;,
        Lqe/b$a;
    }
.end annotation


# static fields
.field public static final c:Lqe/b$a;


# instance fields
.field private final a:Lne/y;

.field private final b:Lne/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqe/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqe/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqe/b;->c:Lqe/b$a;

    return-void
.end method

.method public constructor <init>(Lne/y;Lne/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqe/b;->a:Lne/y;

    .line 5
    .line 6
    iput-object p2, p0, Lqe/b;->b:Lne/a0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lne/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lqe/b;->b:Lne/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lne/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lqe/b;->a:Lne/y;

    .line 2
    .line 3
    return-object v0
.end method
