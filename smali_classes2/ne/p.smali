.class public interface abstract Lne/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/p$a;
    }
.end annotation


# static fields
.field public static final a:Lne/p$a;

.field public static final b:Lne/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lne/p$a;->a:Lne/p$a;

    .line 2
    .line 3
    sput-object v0, Lne/p;->a:Lne/p$a;

    .line 4
    .line 5
    new-instance v0, Lne/p$a$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lne/p$a$a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lne/p;->b:Lne/p;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
.end method
