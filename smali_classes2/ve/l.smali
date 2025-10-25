.class public interface abstract Lve/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve/l$a;
    }
.end annotation


# static fields
.field public static final a:Lve/l$a;

.field public static final b:Lve/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lve/l$a;->a:Lve/l$a;

    .line 2
    .line 3
    sput-object v0, Lve/l;->a:Lve/l$a;

    .line 4
    .line 5
    new-instance v0, Lve/l$a$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lve/l$a$a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lve/l;->b:Lve/l;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract a(ILve/b;)V
.end method

.method public abstract b(ILjava/util/List;)Z
.end method

.method public abstract c(ILjava/util/List;Z)Z
.end method

.method public abstract d(ILaf/f;IZ)Z
.end method
