.class public abstract Ltd/t2;
.super Lad/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd/t2$a;
    }
.end annotation


# static fields
.field public static final b:Ltd/t2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltd/t2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltd/t2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltd/t2;->b:Ltd/t2$a;

    return-void
.end method
