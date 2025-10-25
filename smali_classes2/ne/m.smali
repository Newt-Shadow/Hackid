.class public interface abstract Lne/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/m$a;
    }
.end annotation


# static fields
.field public static final a:Lne/m$a;

.field public static final b:Lne/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lne/m$a;->a:Lne/m$a;

    .line 2
    .line 3
    sput-object v0, Lne/m;->a:Lne/m$a;

    .line 4
    .line 5
    new-instance v0, Lne/m$a$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lne/m$a$a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lne/m;->b:Lne/m;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract a(Lne/t;Ljava/util/List;)V
.end method

.method public abstract b(Lne/t;)Ljava/util/List;
.end method
