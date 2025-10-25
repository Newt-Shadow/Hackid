.class public abstract Lgc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/b$b;,
        Lgc/b$c;,
        Lgc/b$a;
    }
.end annotation


# static fields
.field private static final a:Lgc/b$c;

.field public static final b:Lgc/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgc/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgc/b;->b:Lgc/b$a;

    .line 8
    .line 9
    new-instance v0, Lgc/b$c;

    .line 10
    .line 11
    invoke-direct {v0}, Lgc/b$c;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lgc/b;->a:Lgc/b$c;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgc/b;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lgc/b$c;
    .locals 1

    .line 1
    sget-object v0, Lgc/b;->a:Lgc/b$c;

    .line 2
    .line 3
    return-object v0
.end method
