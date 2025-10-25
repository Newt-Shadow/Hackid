.class public abstract Lg/b;
.super Lg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/b$a;
    }
.end annotation


# static fields
.field public static final a:Lg/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lg/b;->a:Lg/b$a;

    return-void
.end method
