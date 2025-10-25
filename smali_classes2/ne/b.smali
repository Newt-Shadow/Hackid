.class public interface abstract Lne/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/b$a;
    }
.end annotation


# static fields
.field public static final a:Lne/b$a;

.field public static final b:Lne/b;

.field public static final c:Lne/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lne/b$a;->a:Lne/b$a;

    .line 2
    .line 3
    sput-object v0, Lne/b;->a:Lne/b$a;

    .line 4
    .line 5
    new-instance v0, Lne/b$a$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lne/b$a$a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lne/b;->b:Lne/b;

    .line 11
    .line 12
    new-instance v0, Lpe/a;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v1}, Lpe/a;-><init>(Lne/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lne/b;->c:Lne/b;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public abstract a(Lne/c0;Lne/a0;)Lne/y;
.end method
