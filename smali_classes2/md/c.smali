.class public abstract Lmd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd/c$a;
    }
.end annotation


# static fields
.field public static final a:Lmd/c$a;

.field private static final b:Lmd/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmd/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmd/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lmd/c;->a:Lmd/c$a;

    .line 8
    .line 9
    sget-object v0, Ldd/b;->a:Ldd/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ldd/a;->b()Lmd/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lmd/c;->b:Lmd/c;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lmd/c;
    .locals 1

    .line 1
    sget-object v0, Lmd/c;->b:Lmd/c;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract b(I)I
.end method
