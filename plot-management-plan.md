# Northwood Cemetery - Plot Management Back Office Plan

This document outlines the design and implementation plan for the new Plot Management section of the Northwood Cemetery back office.

## 1. Data Model

The existing data model is well-structured and will require minimal changes. The `plots` and `deceased_records` tables are the primary tables for this functionality.

### `plots` table

No changes are required to the `plots` table schema.

### `deceased_records` table

To implement the "move details to another plot" feature, we will simply update the `plot_id` foreign key in the `deceased_records` table. This will effectively move the deceased record to a new plot.

## 2. API Endpoints

We will create the following API endpoints to handle the CRUD operations for plots and the move functionality.

### Plot Management

- `GET /api/admin/plots`: Get a paginated list of all plots.
- `GET /api/admin/plots/[id]`: Get the details of a single plot, including associated deceased records.
- `POST /api/admin/plots`: Create a new plot.
- `PUT /api/admin/plots/[id]`: Update an existing plot.
- `DELETE /api/admin/plots/[id]`: Delete a plot (soft delete by setting status to 'inactive' is recommended).

### Move Plot Details

- `PUT /api/admin/deceased/[id]/move`: Update the `plot_id` of a deceased record to move it to a new plot.

## 3. UI/UX Design

The new Plot Management section will be accessible from the main admin dashboard.

### Plot List Page (`/admin/plots`)

- A table view displaying all plots with key information (Plot Number, Section, Status, etc.).
- Pagination to handle the large number of plots.
- A "Create Plot" button to open a form for adding a new plot.
- Edit and Delete buttons for each plot in the table.

### Plot Create/Edit Page (`/admin/plots/new` and `/admin/plots/[id]/edit`)

- A form with fields for all the properties of a plot.
- For editing, the form will be pre-filled with the existing plot data.

### Plot Details Page (`/admin/plots/[id]`)

- This page will display all the details of a single plot.
- It will also list all the deceased records associated with that plot.
- From this page, the admin will be able to initiate the "move details" functionality.

### "Move Details" Modal

- When an admin wants to move a deceased record, a modal will appear.
- The modal will have a search input to find the new plot by plot number.
- Upon selecting the new plot and confirming, the `plot_id` of the deceased record will be updated.

## 4. Implementation Steps

1.  **Create the API routes:** Implement the API endpoints defined above using Next.js API routes.
2.  **Build the UI components:** Create the React components for the plot list, create/edit form, and details page.
3.  **Implement the "move details" functionality:** Build the modal and the API call to update the deceased record.
4.  **Add links to the admin dashboard:** Add a link to the new Plot Management section on the main admin dashboard.
