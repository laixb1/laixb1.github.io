<cfdump var="#form#">

<cfset queryName = "frag">
    <cfset fname = "">
    <cfset email ="">
    <cfset description ="">
    <cfset starRating="">
    <cfset myDate = now()>



    <cfif NOT structIsEmpty(form)>
        <cfset fname = form.fname>

        <cfset email = form.email>
        <cfset description =form.description>
        <cfset starRating = form.starRating>


        <cfquery name = "adding" datasource="#queryName#">
            
            INSERT INTO review (name, email, stars, postDate, description)
            VALUES (
            
            <cfqueryparam value="#fname#" cfsqltype="varchar">,
            <cfqueryparam value="#email#" cfsqltype="varchar">,
            
            <cfqueryparam value="#starRating#" cfsqltype="CF_SQL_INTEGER">,
            <cfqueryparam value="#now()#" cfsqltype="CF_SQL_timestamp">,
            <cfqueryparam value="#description#" cfsqltype="varchar">
            )
        </cfquery>


    </cfif>