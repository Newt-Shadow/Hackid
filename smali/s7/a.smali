.class public final Ls7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls7/a$a;
    }
.end annotation


# static fields
.field public static final a:Le8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls7/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ls7/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls7/a;->a:Le8/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Le8/b;)V
    .locals 2

    .line 1
    sget-object v0, Ls7/a$a;->a:Ls7/a$a;

    .line 2
    .line 3
    const-class v1, Ls7/j;

    .line 4
    .line 5
    invoke-interface {p1, v1, v0}, Le8/b;->a(Ljava/lang/Class;Ld8/d;)Le8/b;

    .line 6
    .line 7
    .line 8
    const-class v1, Ls7/b;

    .line 9
    .line 10
    invoke-interface {p1, v1, v0}, Le8/b;->a(Ljava/lang/Class;Ld8/d;)Le8/b;

    .line 11
    .line 12
    .line 13
    return-void
.end method
